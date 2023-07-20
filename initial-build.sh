#!/bin/bash

# Script for setting up reveal.js in GitHub CodeSpaces

# Check the node and npm versions
echo "Node and npm versions:"
node --version
npm --version

# Clone reveal.js repository
echo "Cloning reveal.js repository..."
git clone https://github.com/hakimel/reveal.js.git

# Navigate into reveal.js directory
echo "Navigating into reveal.js directory..."
cd reveal.js

# Update host in gulpfile.js
echo "Updating host in gulpfile.js..."
sed -i "s/host = 'localhost'/host = '0.0.0.0'/g" gulpfile.js

# Install reveal.js using npm
echo "Installing reveal.js..."
npm install

# Start reveal.js
echo "Starting reveal.js..."
npm start
