#!/bin/sh
rm -rf build
mkdir -p build
javac -classpath gson-2.6.2.jar:junit-4.12.jar:src:test -d build test/JavaCodeTest.java
javac -classpath gson-2.6.2.jar:junit-4.12.jar:build:test -d build src/testplan/Main.java
