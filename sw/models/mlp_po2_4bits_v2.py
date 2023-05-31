import six
import numpy as np
import tensorflow.compat.v2 as tf

from qkeras import *

from tensorflow.keras.layers import *
from tensorflow.keras.models import Model
from tensorflow.keras.datasets import mnist
from tensorflow.keras.utils import to_categorical

#q = "quantized_po2(8,log2_rounding = 'rnd')"
#q = "quantized_po2(8,log2_rounding = 'rnd',max_value=0.25)"
#q = "quantized_po2(8,log2_rounding = 'rnd',max_value=0.125)"
q = "quantized_po2(4,log2_rounding = 'rnd')"


def mlp_po2_4bits_v2(input_shape, num_classes,
               fc_config=[(256, 'relu'),
                          # (10, 'relu'),
                          (10, 'softmax')]):
    x = x_in = Input(input_shape)

    x = QConv2D(32, (5, 5),
                kernel_quantizer=q,
                bias_quantizer=q,
                name="conv2d_1", padding="same")(x)
    x = QActivation("quantized_relu()", name="act_1")(x)
    x = QConv2D(32, (5, 5),
                kernel_quantizer=q,
                bias_quantizer=q,
                name="conv2d_2", padding="same")(x)
    x = QActivation("quantized_relu()", name="act_2")(x)
    x = MaxPooling2D(2, 2, name="mp_0")(x)
    x = Dropout(0.25)(x)

    x = QConv2D(32, (3, 3),
                kernel_quantizer=q,
                bias_quantizer=q,
                name="conv2d_3", padding="same")(x)
    x = QActivation("quantized_relu()", name="act_3")(x)
    x = QConv2D(32, (3, 3),
                kernel_quantizer=q,
                bias_quantizer=q,
                name="conv2d_4", padding="same")(x)
    x = QActivation("quantized_relu()", name="act_4")(x)
    x = MaxPooling2D(2, 2, name="mp_1")(x)
    x = Dropout(0.25)(x)

    # Fully Connected Layer
    x = Flatten(name="flatten")(x)
    for i, (units, activation) in enumerate(fc_config):
        x = QDense(num_classes,
                   # not using bias
                   use_bias=False,
                   # Using power of 2 to quantize the weight
                   # kernel_quantizer="quantized_po2(8,quadratic_approximation=True)",
                   kernel_quantizer=q,
                   # bias_quantizer="quantized_po2(8)",
                   name=f'fc{i+1}')(x)

    # x = Dense(num_classes, activation='softmax', name='output')(x)
    x = Activation("softmax", name="act_5")(x)

    # x = Lambda(STE)(x)

    model = Model(inputs=x_in, outputs=x)

    model.compile(loss="categorical_crossentropy",
                  optimizer="adam", metrics=["accuracy"])

    return model
