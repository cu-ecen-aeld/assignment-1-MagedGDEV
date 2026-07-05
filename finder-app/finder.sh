#!/bin/sh

filesdir=$1
searchstr=$2

if [ $# -lt 2 ]
then
    echo "This script requires 2 parameters to work"
    return 1
fi

if [ ! -d $filesdir ]
then 
    echo "The directory you provided doesnt exist"
    return 1
fi

x=$(find ${filesdir} -type f | wc -l)

y=$(grep -r "${searchstr}" "${filesdir}" | wc -l)

echo "The number of files are ${x} and the number of matching lines are ${y}"