from tensorflow.keras import datasets, layers, models
import tensorflow as tf
import os
import sys
# Models
from models.model_zoo import model_zoo
from qkeras.utils import model_save_quantized_weights

"""
# train_mnist_v2 is v2 version of train_mnist_v

using model that is quantized by QKeras

Saving quantized weight using the API of QKeras

"""

# Set the GPU index you want to use (0-based)
os.environ['CUDA_VISIBLE_DEVICES'] = '0,1'

# Define the input shape of the network
input_shape = (28, 28, 1)
# Define the number of classes
num_classes = 10

# Models to train
# mlp model normal quantized to fixed point
#model_name = "mlp_qnn_v2"
# mlp model quantized to power of 2
model_name = "mlp_po2_v2"

if model_name not in model_zoo():
    print(
        f"Model '{model_name}' not found. Please choose from {list(model_zoo().keys())}.")
    sys.exit(1)
model = model_zoo()[model_name](
    input_shape=input_shape, num_classes=num_classes)

# Load the MNIST dataset and preprocess the data
(x_train, y_train), (x_test, y_test) = datasets.mnist.load_data()

# Reshape the data to match the input shape of the model
x_train = x_train.reshape(-1, 28, 28, 1)
x_test = x_test.reshape(-1, 28, 28, 1)

# Convert the labels to one-hot encoded vectors
y_train = tf.keras.utils.to_categorical(y_train, num_classes)
y_test = tf.keras.utils.to_categorical(y_test, num_classes)

# TensorBoard
log_dir = "logs/fit"
tb_callback = tf.keras.callbacks.TensorBoard(log_dir=log_dir, histogram_freq=1)

# Compile Model
# model.compile(loss="categorical_crossentropy", optimizer="adam", metrics=["accuracy"])

# Train the model on the training data
model.fit(x_train, y_train, batch_size=64, epochs=30,
          validation_data=(x_test, y_test),
          callbacks=[tb_callback])

model.summary()

# Saving quantized weights
model_save_quantized_weights(model)

model.save_weights(model_name+".h5")
