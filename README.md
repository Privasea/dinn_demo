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
