#!/bin/bash

# Load dependencies
if [ -e /openbrisk/$MODULE_NAME.Gemfile ]
then 
    bundle install --gemfile=/openbrisk/$MODULE_NAME.Gemfile
fi

# Run the server.
ruby server.rb -p 8080 -o 0.0.0.0 -e production