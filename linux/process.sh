# Linux Admin

# 1. Process Management
    # Process =  running programs in memory
    # PID = Process ID
    # Commands
        # ps aux = show all running processes
        # top = show real-time system processes
        # htop = improved top command with colors
        # kill <PID> = stop a process by its PID
        # systemctl status <service> = check service status

# Exercise:
    ps aux | head -5
    echo "See running processes"

# top
    echo "Press q to exit top"
    top

# kill a dummy process
    sleep 300 &
    echo "Started a dummy process with PID $!"
    kill $!
    echo "Killed the dummy process"




