import tensorflow as tf
import tensorflow_model_optimization as tfmot

Quantizer = tfmot.quantization.keras.quantizers.Quantizer


class Power_of_2_quantizer(Quantizer):
    # Example quantizer which clips tensors in a fixed range.

    def build(self, tensor_shape, name, layer):
        range_var = layer.add_weight(
            name + '_range',
            initializer=keras.initializers.Constant(6.0),
            trainable=False)

        return {
            'range_var': range_var,
        }

    def __call__(self, inputs, training, weights, **kwargs):
        return tf.keras.backend.clip(
            inputs, 0.0, weights['range_var'])

    def get_config(self):
        # Not needed. No __init__ parameters to serialize.
        return {}

# fixed quantizer


class Power_of_2_quantizer(_QuantizeHelper, Quantizer):
    """Quantize tensor based on min/max of tensor values with the power of 2."""

    def __init__(self, num_bits, init_min, init_max, narrow_range):
        """Construct an FixedQuantizer.

        This is an experimental API not subject to backward compatibility.

        Args:
          num_bits: Number of bits for quantization
          init_min: the lower end of quantization interval.
          init_max: the upper end of quantization interval.
          narrow_range: In case of 8 bits, narrow_range nudges the quantized range
            to be [-127, 127] instead of [-128, 127]. This ensures symmetric
            range has 0 as the centre.
        """
        self.num_bits = num_bits
        self.init_min = init_min
        self.init_max = init_max
        self.narrow_range = narrow_range

    def build(self, tensor_shape, name, layer):
        pass

    def __call__(self, inputs, training, weights, **kwargs):
        """Quantize tensor.

        Args:
          inputs: Input tensor to be quantized.
          training: Whether the graph is currently training.
          weights: Dictionary of weights the quantizer can use to quantize the
            tensor. This contains the weights created in the `build` function.
          **kwargs: Additional variables which may be passed to the quantizer.

        Returns:
          Quantized tensor.
        """
        return quant_ops.FixedQuantize(
            inputs,
            self.init_min,
            self.init_max,
            narrow_range=self.narrow_range,
        )

    def get_config(self):
        return {
            'num_bits': self.num_bits,
            'init_min': self.init_min,
            'init_max': self.init_max,
            'narrow_range': self.narrow_range
        }

    def __eq__(self, other):
        if not isinstance(other, FixedQuantizer):
            return False

        return (self.num_bits == other.num_bits and
                self.init_min == other.init_min and
                self.init_max == other.init_max and
                self.narrow_range == other.narrow_range)

    def __ne__(self, other):
        return not self.__eq__(other)
