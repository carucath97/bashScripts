#!/bin/bash

#ask user for info on directory
echo "enter directory name"
read dirname

totalFiles=$(ls -a $dirname | wc -l)
echo "Number of files in ${dirname}: ${totalFiles}"
lastModified=$(stat $dirname | grep "Modify" | cut -d" " -f2-4)
echo ${lastModified}
echo "Last Modified: ${lastModified}"
ls -lS $dirname > tempFile
biggestfile=$(head -n2 tempFile | tail -n1 | cut -d" " -f10)
biggestFileSize=$(head -n2 tempFile | tail -n1 | cut -d" " -f5)
smallestfile=$(tail -n1 tempFile | cut -d" " -f12)
smallestFileSize=$(tail -n1 tempFile | cut -d" " -f7)
echo "Largest File: ${biggestfile} (${biggestFileSize} bytes)"
echo "Smallest File: ${smallestFileName} (${smallestFileSize} bytes)"
