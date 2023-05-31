import six
import numpy as np
import tensorflow.compat.v2 as tf

from qkeras import *


from tensorflow.keras.layers import *
from tensorflow.keras.models import Model
from tensorflow.keras.datasets import mnist
from tensorflow.keras.utils import to_categorical

# fixed point quantized


def mlp_qnn_4bits_v2(input_shape, num_classes,
                     fc_config=[(128, 'relu'),
                                # (10, 'relu'),
                                (10, 'softmax')]):
    x = x_in = Input(input_shape)

    # more feasable for training by adding some cnn
    x = Conv2D(32, (5, 5), name="conv2d_1")(x)
    x = Activation("relu", name="act_1")(x)
    x = Conv2D(32, (5, 5), name="conv2d_2")(x)
    x = Activation("relu", name="act_2")(x)
    x = MaxPooling2D(2, 2, name="mp_0")(x)
    x = Dropout(0.25)(x)

    x = Conv2D(32, (5, 5), name="conv2d_3")(x)
    x = Activation("relu", name="act_3")(x)
    x = Conv2D(32, (5, 5), name="conv2d_4")(x)
    x = Activation("relu", name="act_4")(x)
    x = MaxPooling2D(2, 2, name="mp_1")(x)
    x = Dropout(0.25)(x)

    # Fully Connected Layer
    x = Flatten(name="flatten")(x)
    for i, (units, activation) in enumerate(fc_config):
        x = QDense(num_classes,
                   # not using bias
                   use_bias=False,
                   # Using power of 2 to quantize the weight
                   # kernel_quantizer="quantized_bits(4,integer=4)",
                   kernel_quantizer="quantized_bits(8,integer=8)",
                   name=f'fc{i+1}')(x)

        # x = Dense(num_classes, activation='softmax', name='output')(x)

    x = Activation("softmax", name="act_5")(x)
    model = Model(inputs=x_in, outputs=x)

    model.compile(loss="categorical_crossentropy",
                  optimizer="adam", metrics=["accuracy"])

    return model
