#!/bin/bash

deploy=0

while [ "$1" != "" ]; do
    if [ "$1" == "deploy" ]; then
        deploy=1
    fi
    shift
done

declare -a arr=("distortion" "timescale" "tremolo" "vibrato")

for i in "${arr[@]}"
do
   $("${i}/compile-linux.sh" > "${i}.log")
done

if [ deploy == 1 ]; then
    "cp *.so ../src/main/resources/natives/linux-arm/"
fi