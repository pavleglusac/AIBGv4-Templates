#!/bin/bash

# Determine the directory where this script is located
SCRIPT_DIR=$(cd "$(dirname "$0")"; pwd) && echo "$$" > "$SCRIPT_DIR/pid.log"

# Compile the Java program
javac "$SCRIPT_DIR/Main.java"

# Check if compilation was successful
if [ $? -eq 0 ]; then
    # Run the Java program
    exec java -cp "$SCRIPT_DIR" Main
else
    echo "Compilation failed"
fi
