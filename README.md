# Privasea

<p align="center">
  <a href="https://www.privasea.tech//"><img src="https://github.com/Privasea/Miscellaneous/blob/3be7ff3c2d9f7e955e80f6637b5098fdb4583e3a/Figures/Logo/Privasea-Logo.jpg" width=40%  /></a>
</p>

<p align="center">
  <a href="https://github.com/Privasea"><img src="https://img.shields.io/badge/Playground-Privasea_Technology-brightgreen?logo=Parity%20Substrate" /></a>
  <a href="https://www.privasea.tech/"><img src="https://img.shields.io/badge/made%20by-Privasea%20Tech-blue.svg?style=flat-square" /></a>
  <a href="https://github.com/Privasea/Miscellaneous"><img src="https://img.shields.io/badge/project-Miscellaneous-yellow.svg?style=flat-square" /></a>
</p>

Introduction
=====================================

Privasea is a cutting-edge privacy computing solution that leverages decentralized technology to ensure data security and protect user privacy. It utilizes AI models to process sensitive information in a secure and confidential manner. Privasea's unique architecture is easy to scale up with computation crowdsourcing, making it an ideal solution for organizations of all sizes looking to maintain the privacy of their data.

This repository will serve as a toolbox to store useful sources such as figures or documents which would be used for other privasea repository.


# dinn_demo


# How to run in ubuntu

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
