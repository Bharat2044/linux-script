#!/bin/bash

# if ping -c 1 8.8.8.8;
if ping -c 1 8.8.8.8 > /dev/null;
then
        echo "We are Live"
else
        echo "No Internet"
fi
