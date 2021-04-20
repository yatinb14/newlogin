#!/bin/bash
cd /home/thinknyx/AMS/ams/
source ./newenv
export FLASK_DEBUG=1
export FLASK_ENV=development
cd app
export FLASK_APP=login.py
nohup flask run --host 0.0.0.0 --port 5000 &
echo "Login started"

