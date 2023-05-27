import numpy as np
from .quantization_scheme import QuantizationScheme


def save_weights(w, filename, q_scheme):
    a,b = w.shape
    data = w.flatten()
    write_quant_int(data, q_scheme, filename,a,b)


def save_inputs(inp, filename, q_scheme):
    a,b = inp.shape
    data = inp.flatten()
    write_quant_int(data, q_scheme, filename,a,b)


def save_outputs(outp, filename, q_scheme):
    a,b = outp.shape
    data = outp.flatten()
    write_quant_int(data, q_scheme, filename,a,b)


def write_float32(data, q_scheme, filename):
    if not isinstance(data, np.ndarray):
        raise ("This is not an numpy ndarray")
    if len(data.shape) != 1:
        raise ("numpy ndarray is not flattened")
    with open(filename, 'w') as f:
        num_of_hex = 4
        for i in range(data.shape[0]):
            f.write("float32 {:.8f}\n".format(data[i]))
    f.close()


def write_quant_int(data, q_scheme, filename,a,b):
    if not isinstance(data, np.ndarray):
        raise ("This is not an numpy ndarray")
    if len(data.shape) != 1:
        raise ("numpy ndarray is not flattened")
    q_data = q_scheme.convert(data)
    # Mutiply a scale to move decimal points
    q_data = q_data * (2**q_scheme.frac_bits)
    # Convert to integer
    q_data = q_data.astype(int)
    num_of_hex = 4
    data_temp = q_data
    data_temp = data_temp.astype(str)
    for i in range(q_data.shape[0]):
        data = q_data[i]
        # f.write("float32 {:.8f}\n".format(data))
        if data < 0:  # Negative case
            # Only chop out the bits we quantized
            lsb_mask = (1 << q_scheme.total_bits) - 1
            # Pad the most significant bits with ones
            msb_mask = ~lsb_mask
            # Mask out only the bits we want to print
            print_mask = (1 << (4 * num_of_hex)) - 1
            padded_with_1s = (
                # In 2's compliment, (~num + 1) equals to sign conversion
                ~(~data + 1) + 1
            ) & lsb_mask \
                | msb_mask \
                & print_mask
            data_temp[i] = "{data:0{width}X}".format(
                width=num_of_hex, data=padded_with_1s)
        else:  # Positive case
            data_temp[i] = "{data:0{width}X}".format(
                width=num_of_hex, data=data)
    data_temp = data_temp.reshape(a,b)
    np.savez(filename,arr_0 = data_temp)
