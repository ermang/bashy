#!/bin/bash

#this script multiples the given INPUT N_TIMES times and writes to a file with FILE_NAME

#set below given parameters according to your needs


N_TIMES=10
FILE_NAME='multiplied.txt'
INPUT='this is sample input'

if [ "$#" -eq "1" ]; then
    INPUT=$1
fi

rm -f $FILE_NAME

for (( i=0; i<N_TIMES; i=i+1 )); do
    echo "$INPUT" >> $FILE_NAME
done
