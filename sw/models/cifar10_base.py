import six
import numpy as np
import tensorflow.compat.v2 as tf
from qkeras import *
from tensorflow.keras.layers import *
from tensorflow.keras.models import Model
from tensorflow.keras.utils import to_categorical

q = "quantized_bits(8,0,1)"

def cifar10_base(input_shape, num_classes):

    # Add the input layer
    x = x_in = Input(input_shape)

    # Add the convolutional layers
    x = QConv2D(32, (3, 3),
                kernel_quantizer=q,
                bias_quantizer=q,
                name="conv2d_1", padding="same",kernel_initializer='he_uniform')(x)
    x = QActivation("quantized_relu()", name="act_1")(x)
   # x = BatchNormalization()(x)
    x = QConv2D(32, (3, 3),
                kernel_quantizer=q,
                bias_quantizer=q,
                name="conv2d_2", padding="same",kernel_initializer='he_uniform')(x)
    x = QActivation("quantized_relu()", name="act_2")(x)
    #x = BatchNormalization()(x)
    x = MaxPooling2D(2, 2, name="mp_0")(x)
    x = Dropout(0.2)(x)
    x = QConv2D(64, (3, 3),
                kernel_quantizer=q,
                bias_quantizer=q,
                name="conv2d_3", padding="same",kernel_initializer='he_uniform')(x)
    x = QActivation("quantized_relu()", name="act_3")(x)
    #x = BatchNormalization()(x)
    x = QConv2D(64, (3, 3),
                kernel_quantizer=q,
                bias_quantizer=q,
                name="conv2d_4", padding="same",kernel_initializer='he_uniform')(x)
    x = QActivation("quantized_relu()", name="act_4")(x)
    #x = BatchNormalization()(x)
    x = MaxPooling2D(2, 2, name="mp_1")(x)
    x = Dropout(0.3)(x)

# Layer
    x = QConv2D(128, (3, 3),
                kernel_quantizer=q,
                bias_quantizer=q,
                name="conv2d_5", padding="same",kernel_initializer='he_uniform')(x)
    x = QActivation("quantized_relu()", name="act_5")(x)
   # x = BatchNormalization()(x)
    x = QConv2D(128, (3, 3),
                kernel_quantizer=q,
                bias_quantizer=q,
                name="conv2d_6", padding="same",kernel_initializer='he_uniform')(x)
    x = QActivation("quantized_relu()", name="act_6")(x)
   # x = BatchNormalization()(x)
    x = MaxPooling2D(2, 2, name="mp_2")(x)
    x = Dropout(0.4)(x)
    
#    x = QConv2D(256, (3, 3),
#               kernel_quantizer=q,
#                bias_quantizer=q,
#                name="conv2d_7", padding="same",kernel_initializer='he_uniform')(x)
#    x = QActivation("quantized_relu()", name="act_7")(x)
#    x = BatchNormalization()(x)
#    x = QConv2D(256, (3, 3),
#                kernel_quantizer=q,
#                bias_quantizer=q,
#                name="conv2d_8", padding="same",kernel_initializer='he_uniform')(x)
#    x = QActivation("quantized_relu()", name="act_8")(x)
#    x = BatchNormalization()(x)
#    x = MaxPooling2D(2, 2, name="mp_3")(x)
#    x = Dropout(0.5)(x)


    x = Flatten(name="flatten")(x)
    x = QDense(1024,
                   # not using bias
                   use_bias=False,
                   # Using power of 2 to quantize the weight
                   kernel_quantizer=q,
                   # bias_quantizer="quantized_po2(8)",
                   name='fc1')(x)
    x = Activation("relu", name ="act_7")(x)
#    x = BatchNormalization()(x)
    x = Dropout(0.5)(x)
    x = QDense(10,
                   # not using bias
                   use_bias=False,
                   # Using power of 2 to quantize the weight
                   kernel_quantizer=q,
                   # bias_quantizer="quantized_po2(8)",
                   kernel_initializer='he_uniform',
                   name='fc2')(x)
    x = Activation("softmax", name="act_8")(x)
 #   x = AveragePooling2D(1, 1)(x)
    # Compile the model
    model = Model(inputs=x_in, outputs=x)
    model.compile(loss='sparse_categorical_crossentropy',
                  optimizer='adam',
                  metrics=['accuracy'])
    return model
