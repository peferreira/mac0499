#!/bin/bash

make clean 
make pdf
cp ./monografia_template.pdf ../monografia.pdf
make clean
