#!/bin/bash

function upload {
    path=$1
    server=$2
    echo "Uploading from $path to $server..."
    for file in "$path"/*
    do
        scp $file $server
    done
    echo "Finished uploading."
}

if [ -f "uplocation.txt" ]
then
    path=`cat uplocation.txt`
else
    echo "Please input location to folder where videos are placed to bulk upload"
    read -p "> " path
    if [ ${#path} = 0 ]
    then
        echo "Entered path is not valid!"
        exit
    fi
    echo $path >> uplocation.txt
    echo "Successfully saved path $path as upload folder."
fi

if [ -f "server.txt" ]
then
    server=`cat server.txt`
else
    printf "Please input server location like following\nusername@adress:/upload/location/"
    read -p "> " server
    if [ ${#server} = 0 ]
    then
        echo "Entered server is not valid!"
        exit
    fi
    echo $server >> server.txt
    echo "Successfully saved server $server as upload server."
fi

upload $path $server