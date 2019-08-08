#!/bin/bash

#make new directory
mkdir QAC_sinead

#change to new directory
cd QAC_sinead

#create new files
touch file1.txt
touch file2.txt
touch file3.txt

#add text to file1
echo "this is file1" >> file1.txt

#create child directory
mkdir childDir

#copy file1 to childDir
cp file1.txt childDir
