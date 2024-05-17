# Get the directory of this script
SCRIPT_DIR=$(cd "$(dirname "$0")" && pwd) && echo "$$" > "$SCRIPT_DIR/pid.log"

# Navigate to the directory containing the C++ file
cd "$SCRIPT_DIR"

# Compile the C++ file
g++ -o SimpleBot SimpleBot.cpp

# Check if compilation was successful
if [ $? -eq 0 ]; then
    # Run the compiled executable
    exec ./SimpleBot
else
    echo "Compilation failed. Please check your C++ code."
fi
