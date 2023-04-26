# Handwritting Digit Recognition Demo

<p align="center">
  <a href="https://www.privasea.ai"><img src="https://github.com/Privasea/Miscellaneous/blob/3be7ff3c2d9f7e955e80f6637b5098fdb4583e3a/Figures/Logo/Privasea-Logo.jpg" width=40%  /></a>
</p>

<p align="center">
  <a href="https://github.com/Privasea"><img src="https://img.shields.io/badge/Playground-Privasea_Technology-brightgreen?logo=Parity%20Substrate" /></a>
  <a href="https://www.privasea.ai"><img src="https://img.shields.io/badge/made%20by-Privasea%20Tech-blue.svg?style=flat-square" /></a>
  <a href="https://github.com/Privasea/dinn_demo"><img src="https://img.shields.io/badge/project-dinn_demo-yellow.svg?style=flat-square" /></a>
</p>


# Table of Contents

- [Introduction](#introduction)
- [Running](#running)
- [Remark](#remark)

## Introduction

This is a demonstration for secure handwritting digit recognition using [HESEA library](https://github.com/Privasea/HESEA_Lib). We use the scheme describe on the paper [Fast Homomorphic Evaluation of Deep Discretized Neural Networks](https://eprint.iacr.org/2017/1114.pdf). It presents an approach for privacy-preserving deep learning using the TFHE encryption scheme. The main advantage of DINN is that it achieves competitive accuracy while maintaining normal operational efficiency thanks to its innovative use of Discretized Neural Networks. These networks quantize the weights and biases, reducing the complexity of the underlying computations and simplifying the TFHE bootstrapping procedure. As a result, the homomorphic evaluation is further improved, leading to enhanced efficiency.

In this demo, the client first homomorphically encrypt a handwritten digital image locally and then transmit the encrypted data to the server. Upon receiving the ciphertext, the server runs the neural network recognition algorithm in the ciphertext domain, obtains the encrypted recognition result, and returns it to the client. The client can then decrypt the encrypted recognition result to obtain the correct output.


# Running

Dependencies:

[HESEA](https://github.com/Privasea/HESEA_Lib)

after installed the HESEA lib, run with the command:

```
gcc -xc++ -lstdc++ -shared-libgcc dinn_demo.cpp -o nn_multi_pke -I /usr/local/include/hesea  -L /usr/local/lib -libHESEApke.so

./nn_multi_pke
```

or you can build this demo by camke as follow

```shell
mkdir build
cd build
cmake ..
make
./dinn_demo
```

# Remark
This is only a demostration for handwritting digit recognition and please do not use it in any mature product.

