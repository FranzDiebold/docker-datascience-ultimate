#!/bin/bash

if [ -f "$PWD/requirements.txt" ]; then
    echo "############################################"
    echo "Installing packages from requirements.txt..."
    pip install --no-cache-dir -r "$PWD/requirements.txt"
else
    echo "No requirements.txt found."
fi
