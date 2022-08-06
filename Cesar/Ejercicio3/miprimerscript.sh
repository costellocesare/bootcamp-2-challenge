#! /bin/bash

if [[ -z "$1" ]]; then
    mkdir -p Ejercicio3/foo/dummy
    mkdir -p Ejercicio3/foo/empty
    touch Ejercicio3/foo/dummy/file1.txt
    echo "Que me gusta bash!" > Ejercicio3/foo/dummy/file1.txt
    touch Ejercicio3/foo/dummy/file2.txt
    mv Ejercicio3/foo/dummy/file2.txt Ejercicio3/foo/empty/file2.txt
    echo "Que me gusta bash!" > Ejercicio3/foo/empty/file2.txt
elif [[ -n "$1" ]]; then
    mkdir -p Ejercicio3/foo/dummy
    mkdir -p Ejercicio3/foo/empty
    touch Ejercicio3/foo/dummy/file1.txt
    echo "$1" > Ejercicio3/foo/dummy/file1.txt
    cp Ejercicio3/foo/dummy/file1.txt Ejercicio3/foo/empy/file2.txt
fi