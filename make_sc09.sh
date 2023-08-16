#!/bin/bash

declare -a NameArray=("zero" "one" "two" "three" "four" "five" "six" "seven" "eight" "nine")
declare -a FolderArray=("train" "test" "valid")

mkdir /home/qindafei/KX/data/sc09

for name in ${NameArray[@]}; do
    mkdir "/home/qindafei/KX/data/sc09/$name"
done

for folder in ${FolderArray[@]}; do
    for name in ${NameArray[@]}; do
        source="/home/qindafei/KX/data/speech_commands/$folder/$name/."
        dest="/home/qindafei/KX/data/sc09/$name/"
        cp -a "$source" "$dest"
    done
done