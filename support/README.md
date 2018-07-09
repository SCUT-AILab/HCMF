# Models used in this paper

## Real-world Experiment Setup

### CIFAR-10

We use 14 CNN models to extract features.
11 models are [ResNet-20, ResNet-32, ResNet-44, ResNet-56, ResNet-110, Pre-ResNet-20, Pre-ResNet-32, Pre-ResNet-44, Pre-ResNet-56, Pre-ResNet-110, Pre-ResNet-164](https://github.com/D-X-Y/ResNeXt-DenseNet).
One model is [CIFAR-10-Full](https://github.com/D-X-Y/HCMF/blob/master/support/cifar10_full.proto).
Two models are the modified GoogleNet and VGG-16. The strides in conv4 and conv5 are changed from 2 to 1, and fc layers are changed to global pooling layers.

### CIFAR-100

We use the last pooling layer features from ResNet-20, ResNet-32, ResNet-44, ResNet-56, ResNet-68, ResNet-110 and the Pre-ResNet-20, Pre-ResNet-32, Pre-ResNet-44, Pre-ResNet-56, Pre-ResNet-110, and Pre-ResNet-164.

### UCF-101


### Oxford-IIIT-Pet & PASCAL VOC 2007
