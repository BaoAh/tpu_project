import six
import numpy as np
import tensorflow.compat.v2 as tf

from tensorflow.keras.layers import *
from tensorflow.keras.models import Model
from tensorflow.keras.datasets import mnist
from tensorflow.keras.utils import to_categorical


def mlp_v2(input_shape, num_classes,
           fc_config=[(10, 'relu'),
                      (10, 'relu'),
                      (10, 'softmax')]):
    x = x_in = Input(input_shape)

    # Fully Connected Layer
    x = Flatten(name="flatten")(x)
    for i, (units, activation) in enumerate(fc_config):
        x = Dense(units, activation=None,use_bias = False, name=f'fc{i+1}')(x)

    x = Dense(num_classes, activation='softmax', name='output')(x)

    model = Model(inputs=x_in, outputs=x)

    model.compile(loss="categorical_crossentropy",
                  optimizer="adam", metrics=["accuracy"])

    return model
