#!/bin/bash

# Check if the usersecret environment variable is already set
if [ -z "$usersecret" ]; then
    # If not, set the environment variable to the given value
    export usersecret="dH34xJaa23"
    echo "usersecret environment variable has been set to: $usersecret"
else
    # If the usersecret environment variable is already set, print an error
    echo "Error: usersecret environment variable is already set to: $usersecret"
fi
