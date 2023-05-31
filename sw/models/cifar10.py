import tensorflow as tf
import tensorflow_model_optimization as tfmot
from quant_config.dense_q import DenseQuantizeConfig
from utils.quant_utils import quant_Dense_layer

# Quantization shortcut
quantize_annotate_layer = tfmot.quantization.keras.quantize_annotate_layer
quantize_annotate_model = tfmot.quantization.keras.quantize_annotate_model
quantize_apply = tfmot.quantization.keras.quantize_apply
quantize_scope = tfmot.quantization.keras.quantize_scope
# Quantization config
q_config = DenseQuantizeConfig()
# Quantization helper function (only apply to dense layer)


def cifar10(input_shape, num_classes,
          conv_config=[64, 64, 'M', 128, 128, 'M', 256, 256, 256, 'M', 512, 512, 512, 'M', 512, 512, 512, 'M'],
          fc_config=[(4096, 'relu'),
                     (4096, 'relu'),
                     (1000, 'softmax')]):
    model = tf.keras.models.Sequential()

    # Add the input layer
    model.add(tf.keras.layers.Input(shape=input_shape))

    # Add the convolutional layers
    model.add(tf.keras.layers.Conv2D(32, kernel_size=(3, 3), activation='relu',input_shape = (32,32,3), name = 'conv1'))
    model.add(tf.keras.layers.Conv2D(64, kernel_size=(3, 3), activation='relu',name = 'conv2'))
    model.add(tf.keras.layers.MaxPooling2D(pool_size=(2, 2),name = 'pool1'))
    model.add(tf.keras.layers.Dropout(0.25))

# Layer
    model.add(tf.keras.layers.Conv2D(128, kernel_size=(3, 3), activation='relu',name = 'conv3'))
    model.add(tf.keras.layers.MaxPooling2D(pool_size=(2, 2),name = 'pool2'))
    model.add(tf.keras.layers.Conv2D(128, kernel_size=(3, 3), activation='relu',name = 'conv4'))
    model.add(tf.keras.layers.MaxPooling2D(pool_size=(2, 2),name = 'pool3'))
    model.add(tf.keras.layers.Dropout(0.25))

   # for l in conv_config:
   #      if l == 'M':
   #          model.add(tf.keras.layers.MaxPool2D(pool_size=2, strides=2))
   #      else:
   #          model.add(tf.keras.layers.Conv2D(l, kernel_size=3, padding='same'))
   #          model.add(tf.keras.layers.BatchNormalization())
   #          model.add(tf.keras.layers.ReLU())
   #      model.add(tf.keras.layers.AveragePooling2D(pool_size=1, strides=1))

    # Add the fully connected layers
    #model.add(tf.keras.layers.Flatten())
    #for i, (units, activation) in enumerate(fc_config):
     #   model.add(tf.keras.layers.Dense(
      #      units, activation=activation, name=f'fc{i+1}'))

    model.add(tf.keras.layers.Flatten())
    model.add(tf.keras.layers.Dense(1024, activation='relu',name = 'fc1'))
    model.add(tf.keras.layers.Dropout(0.5))
    model.add(tf.keras.layers.Dense(10, activation='softmax',name = 'output_fc2'))

    # Add the output layer
    #model.add(tf.keras.layers.Dense(
     #   num_classes, activation='softmax', name='output'))

    # Compile the model
    model.compile(loss='sparse_categorical_crossentropy',
                  optimizer='adam',
                  metrics=['accuracy'])

    return model
