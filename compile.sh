#!/usr/bin/env bash


echo "generating JNI headers"
javac CheckpointRestore.java && javah CheckpointRestore

echo "compiling JNI native lib"
g++ -c -fPIC -I/usr/local/include/criu/ -I${JAVA_HOME}/include -I${JAVA_HOME}/include/linux CheckpointRestore.cc -o CheckpointRestore.o

echo "Linking with lcriu"
g++ -shared -fPIC -o libCheckpointRestore.so -lcriu -lc
