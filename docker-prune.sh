#!/bin/bash
container=false images=false prune=false
while getopts ":ciP" options
do
    case "${options}" in 
        c) container=true;;
        i) images=true;;
        P) prune=true;;
    esac
done

if $container || $prune; then
    docker rm -vf $(docker ps -a -q) # (-a /all, -q/quiet (only show id)) (-v remove volmes, -f force remove)
fi
if $images || $prune; then
    docker rmi -f $(docker images -a -q)
fi