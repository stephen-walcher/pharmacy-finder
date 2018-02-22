#!/bin/bash

# Start NGINX daemon
service nginx start

# Navigate to the application
cd /var/app

# Run NPM to install modules
npm install

# Run NPM dev server
npm run production
