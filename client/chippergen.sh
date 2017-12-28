#!/bin/bash

if [ $1 = "" ]
then
    printf "USAGE:\nsh chipergen.sh username@adress"
    exit
fi

echo "Generating ssh keyset..."
ssh-keygen -t rsa -b 2048

echo "Uplaoding keyset to server $1 (requires server password)..."
ssh-copy-id -i $1

echo "Success."