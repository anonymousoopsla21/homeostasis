#!/bin/bash
java -jar jtb132.jar imop-grammar.jj
read
javacc -STATIC=false jtb.out.jj
read
javac Main.java
echo "Done parsing Main. Press enter to continue"
read
java Main < test.c
