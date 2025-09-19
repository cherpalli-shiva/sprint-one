# SSH Basics
# SSH (Secure Shell) lets you securely connect to remote servers and manage them via the command line.

# Commands:
    # ssh user@hostname = connect to a remote server
    # ssh-keygen = generate SSH keys for passwordless login
    # scp source destination = securely copy files between local and remote systems
    # ssh -i key.pem user@hostname = connect using a specific private key
    # Config file (~/.ssh/config) = simplify SSH commands with aliases and settings

    # Example ~/.ssh/config:
    # Host myserver
    #     HostName 192.168.1.10
    #     User myuser
    #     IdentityFile ~/.ssh/id_rsa