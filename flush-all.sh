#!/bin/bash

# Script for setting up reveal.js in GitHub CodeSpaces

# Check the node and npm versions
echo "Node and npm versions:"
node --version
npm --version

# Check if reveal.js repository exists
if [ -d "reveal.js" ]; then
    # If exists, pull latest changes
    echo "Updating reveal.js repository..."
    cd reveal.js
    git pull
else
    # If not exists, clone reveal.js repository
    echo "Cloning reveal.js repository..."
    git clone https://github.com/hakimel/reveal.js.git
    cd reveal.js
fi

# Update host in gulpfile.js
echo "Updating host in gulpfile.js..."
sed -i "s/host = 'localhost'/host = '0.0.0.0'/g" gulpfile.js

# Remove node_modules and package-lock.json
echo "Clearing npm environment..."
rm -rf node_modules
rm -f package-lock.json

# Install reveal.js using npm
echo "Rebuilding npm environment and installing reveal.js..."
npm install

# Start reveal.js
echo "Starting reveal.js..."
npm start
