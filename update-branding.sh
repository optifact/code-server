#! /bin/bash

# This script updates the branding for the application by copying the new branding files
# currently only changing the logos
# App name and welcome message can be customized using cli args

# Delete old branding files
rm ./lib/vscode/resources/server/code-192.png
rm ./lib/vscode/resources/server/code-512.png
rm ./lib/vscode/resources/server/favicon.ico
rm ./lib/vscode/resources/server/manifest.json

rm ./src/browser/media/*

# Copy new branding files
cp ./branding/vscode/* ./lib/vscode/resources/server/
cp ./branding/pwa/* ./src/browser/media/