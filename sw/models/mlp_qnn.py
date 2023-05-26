import tensorflow as tf
import tensorflow_model_optimization as tfmot
from quant_config.dense_q import DenseQuantizeConfig
from utils.quant_utils import quant_Dense_layer
from models.mlp import mlp
from models.mlp_no_bias import mlp_no_bias

# Quantization shortcut
quantize_annotate_layer = tfmot.quantization.keras.quantize_annotate_layer
quantize_annotate_model = tfmot.quantization.keras.quantize_annotate_model
quantize_apply = tfmot.quantization.keras.quantize_apply
quantize_scope = tfmot.quantization.keras.quantize_scope


def mlp_qnn_v1(input_shape, num_classes):

    # model = mlp(input_shape=input_shape, num_classes=num_classes)
    model = mlp_no_bias(input_shape=input_shape, num_classes=num_classes)

    # Use `tf.keras.models.clone_model` to apply `quant_Dense_layer`
    # to the layers of the model.
    annotated_model = tf.keras.models.clone_model(
        model, clone_function=quant_Dense_layer)

    # `quantize_apply` requires mentioning `DenseQuantizeConfig` with `quantize_scope`
    with quantize_scope({'DenseQuantizeConfig': DenseQuantizeConfig}):
        q_model = quantize_apply(annotated_model)

    # `quantize_apply` requires a recompile.
    q_model.compile(loss='categorical_crossentropy',
                    optimizer='adam',
                    metrics=['accuracy'])

    return q_model
