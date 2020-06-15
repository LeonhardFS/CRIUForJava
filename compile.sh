#!/usr/bin/env bash


echo "generating JNI headers"
javac CheckpointRestore.java && javah CheckpointRestore

echo "compiling java test file"
javac *.java

echo "creating JNI lib"
mkdir -p build && cd build && cmake .. && make && mv *.so ../ && cd ..

echo "done!"
