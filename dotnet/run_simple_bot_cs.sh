SCRIPT_DIR=$(cd "$(dirname "$0")"; pwd) && echo "$$" > "$SCRIPT_DIR/pid.log" && cd $SCRIPT_DIR && dotnet bin/Debug/net8.0/Program.dll