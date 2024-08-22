#!/bin/bash

function bin(){
    string=""
    for ((i=$1; i; i/=2))
    do
        string=$((i%2))$string
    done
    printf "%08d" $string
}

IFS='.'
read -r -a numbers <<< "$1"
for i in "${numbers[@]:0:${#numbers}}"
do
   bin $i
   printf "."
done
bin ${numbers[-1]}
echo
