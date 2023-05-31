import six
import numpy as np
import tensorflow.compat.v2 as tf

from tensorflow.keras.layers import *
from tensorflow.keras.models import Model
from tensorflow.keras.datasets import mnist
from tensorflow.keras.utils import to_categorical

# not quantized model :using float point


def mlp_v2(input_shape, num_classes,
           fc_config=[(128, 'relu'),
                      # (10, 'relu'),
                      (10, 'softmax')]):
    x = x_in = Input(input_shape)

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

    # x = MaxPooling2D(2, 2, name="mp_1")(x)
    # x = Conv2D(128, (3, 3), name="conv2d_3")(x)
    # x = Activation("relu", name="act_3")(x)
    # x = MaxPooling2D(2, 2, name="mp_2")(x)

    # Fully Connected Layer
    x = Flatten(name="flatten")(x)
    for i, (units, activation) in enumerate(fc_config):
        x = Dense(units, activation=None, use_bias=False, name=f'fc{i+1}')(x)

        # x = Dense(num_classes, activation='softmax', name='output')(x)
    x = Activation("softmax", name="act_5")(x)

    model = Model(inputs=x_in, outputs=x)

    model.compile(loss="categorical_crossentropy",
                  optimizer="adam", metrics=["accuracy"])

    return model
