#!/bin/bash

REPO_URL="https://github.com/hakimel/reveal.js.git"
TARGET_DIR="reveal.js"

echo "Node and npm versions:"
node -v
npm -v

echo "Removing existing reveal.js directory if it exists..."
rm -rf $TARGET_DIR

echo "Cloning reveal.js repository..."
git clone $REPO_URL $TARGET_DIR

echo "Updating host in gulpfile.js..."
sed -i 's/localhost/0.0.0.0/g' $TARGET_DIR/gulpfile.js

echo "Installing reveal.js dependencies..."
cd $TARGET_DIR
npm install

echo "Starting reveal.js..."
npm start
