import tensorflow as tf
import sys
import numpy as np
import os
from tensorflow.keras import datasets

# Models
from models.model_zoo import model_zoo

# Utilities
from visualize.visualize_dist import plot_distribution
from utils.save_to_file import save_weights, save_inputs, save_outputs
from utils.quantization_scheme import QuantizationScheme


class ParamGetter:

    def __init__(self, model, q_scheme, store_path):
        self.model = model
        self.q_scheme = q_scheme
        self.store_path = store_path

    def get_weights(self, layer_name):
        # Iterate through layers of interests and store weight tensors
        for layer in self.model.layers:
            if layer.name == layer_name:
                tensor_w = layer.get_weights()[0]
                print(f"Layer {layer_name} weights shape: {tensor_w.shape}")
                save_weights(tensor_w,
                             os.path.join(self.store_path, layer_name+"_w.hex"),
                             self.q_scheme)
                # Plot weight distributions and save as an image
                # plot_distribution(tensor_w, str(layer_name+"_w.png"))

    def get_bias(self, layer_name):
        # Iterate through layers of interests and store weight tensors
        for layer in self.model.layers:
            if layer.name == layer_name:
                tensor_b = layer.get_weights()[1]
                print(f"Layer {layer_name} bias shape: {tensor_b.shape}")
                save_weights(tensor_b,
                             os.path.join(self.store_path,
                                          layer_name+"_bias.hex"),
                             self.q_scheme)
                # Plot weight distributions and save as an image
                # plot_distribution(tensor_b, str(layer_name+"_bias.png"))

    def get_outputs(self, tensor_in, layer_name):
        # Find the layers of interests and build an intermediate models. Then, store the output of that layer
        temp_model = tf.keras.Model(inputs=self.model.input,
                                    outputs=self.model.get_layer(layer_name).output)
        tensor_out = temp_model.predict(tensor_in)
        print(f"Layer {layer_name} output shape: {tensor_out.shape}")
        # Save outputs as text file
        save_weights(tensor_out,
                     os.path.join(self.store_path, layer_name+"_out.hex"),
                     self.q_scheme)
        # Plot weight distributions and save as an image
        # plot_distribution(tensor_out, str(layer_name+"_out.png"))


if __name__ == "__main__":

    if len(sys.argv) < 2:
        print("Usage: python param_getter.py <loaded_model_name.h5>")
        sys.exit(1)

    # Get the model name from command line argument
    model_filename = str(sys.argv[1])
    model_name = model_filename.replace(".h5", "")

    # Define the input shape of the network
    input_shape = (32, 32, 3)
    # Define the number of classes
    num_classes = 10

    if model_name not in model_zoo():
        print(
            f"Model '{model_name}' not found. Please choose from {list(model_zoo().keys())}.")
        sys.exit(1)

    model = model_zoo()[model_name](
        input_shape=input_shape, num_classes=num_classes)
    model.load_weights(model_filename)
    model.summary()
