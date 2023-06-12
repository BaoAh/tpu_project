from models.mynet_qnn import mynet_qnn_v1
from models.mynet import mynet
from models.vgg16_qnn import vgg16_qnn_v1
from models.vgg16 import vgg16
from models.cifar10 import cifar10
from models.cifar10_base import cifar10_base
from models.cifar10_qnn import cifar10_qnn
from models.cifar10_po2 import cifar10_po2
from models.lenet5_qnn import lenet5_qnn_v1
from models.lenet5 import lenet5
from models.mlp_qnn import mlp_qnn_v1
from models.mlp import mlp
from models.mlp_no_bias import mlp_no_bias
from models.mlp_v2 import mlp_v2
from models.mlp_qnn_v2 import mlp_qnn_v2
from models.mlp_po2_v2 import mlp_po2_v2
from models.mlp_po2_4bits_v2 import mlp_po2_4bits_v2


def model_zoo():

    model_dict = {
        'mynet_qnn_v1': mynet_qnn_v1,
        'mynet': mynet,
        'vgg16_qnn_v1': vgg16_qnn_v1,
        'vgg16': vgg16,
        'cifar10': cifar10,
        'cifar10_base': cifar10_base,
        'cifar10_qnn': cifar10_qnn,
        'cifar10_po2': cifar10_po2,
        'lenet5_qnn_v1': lenet5_qnn_v1,
        'lenet5': lenet5,
        'mlp_qnn_v1': mlp_qnn_v1,
        'mlp': mlp,
        'mlp_no_bias': mlp_no_bias,
        'mlp_v2': mlp_v2,
        'mlp_qnn_v2': mlp_qnn_v2,
        'mlp_po2_v2': mlp_po2_v2,
        'mlp_po2_4bits_v2': mlp_po2_4bits_v2,
    }

    return model_dict
