#!/bin/bash

n=1
command=$1
# we execute while loop until either the command succeeds or the end variable reaches 5
while ! $command && [ $n -le 5 ]; do 
    sleep $n  # waiting a bit before trying again
    ((n=n+1)) # the more we try the more we wait
    echo "Retry #$n"
done;
