#!/bin/bash

rm -rf output
mkdir -p output/mlib

# Compile and Package First.java
mkdir -p output/classes
javac -d output/classes $(find first -name "*.java")
jar -c -f output/mlib/first.jar -C output/classes .
rm -rf output/classes

# Compile and Package Second.java
mkdir -p output/classes
javac -d output/classes -classpath output/mlib/first.jar $(find second -name "*.java")
jar -c -f output/mlib/second.jar -C output/classes .
rm -rf output/classes

java -classpath output/mlib/first.jar:output/mlib/second.jar com.sandersgutierrez.second.Second

# java -p output/mlib -m second/com.sandersgutierrez.second.Second
