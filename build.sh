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
javac -d output/classes -p output/mlib/first.jar $(find second -name "*.java")
jar -c -f output/mlib/second.jar -C output/classes .
rm -rf output/classes

java -p output/mlib -m thesecond/com.sandersgutierrez.second.Second
