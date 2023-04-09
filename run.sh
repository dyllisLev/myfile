#!/bin/bash

# Export environment variables
export RUNNING_TYPE=docker
export C_FORCE_ROOT=true

# Start Redis server in daemon mode
redis-server --daemonize yes

# Initialize counter variable
COUNT=0

# Start FlaskFarm and repeat if necessary
while true;
do
    # Upgrade FlaskFarm package
    pip install --upgrade FlaskFarm

    # Run FlaskFarm with specified configuration
    python -m flaskfarm.main --repeat ${COUNT} --config "/home/codespace/ff/data/config.yaml"

    # Store exit code
    RESULT=$?

    # Print exit code
    echo "PYTHON EXIT CODE : ${RESULT}.............."

    # Check exit code and repeat if necessary
    if [ "$RESULT" = "1" ]; then
        echo 'REPEAT....'
    else
        echo 'FINISH....'
        break
    fi

    # Increment counter variable
    COUNT=`expr $COUNT + 1`
done
