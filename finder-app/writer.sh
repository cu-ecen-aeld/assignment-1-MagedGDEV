#!/bin/sh

writefile=$1
writestr=$2

if [ $# -lt 2 ]
then
    echo "This script requires 2 parameters to work"
    return 1
fi

dirpath=$(dirname "$writefile")
mkdir -p "$dirpath"

if [ ! $? -eq 0 ]
then
    echo "Can't create directory ${dirpath}"
    return 1
fi

touch ${writefile}

if [ ! $? -eq 0 ]
then
    echo "Can't create file ${writefile}"
    return 1
fi

echo "${writestr}" > ${writefile}

if [ ! $? -eq 0 ]
then
    echo "Can't cwrite into ${writefile}"
    return 1
fi