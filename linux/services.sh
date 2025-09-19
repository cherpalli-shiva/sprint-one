# Services start/stop with systemctl

#  Services are background demons managed by systemd

# Commands:
    # systemctl start <service> = start a service
    # systemctl stop <service> = stop a service
    # systemctl restart <service> = restart a service
    # systemctl status <service> = check service status
    # systemctl enable <service> = enable service to start on boot
    # systemctl disable <service> = disable service from starting on boot
    # systemctl list-units --type=service = list all services

# Exercise:

# Install nginx (Debian/Ubuntu):
    sudo apt update
    sudo apt install -y nginx
    echo "Installed nginx web server"

    # Status
    systemctl status nginx

    # Start nginx
    sudo systemctl start nginx
    echo "Started nginx service"

    # Restart nginx
    sudo systemctl restart nginx
    echo "Restarted nginx service"

    # Stop nginx
    sudo systemctl stop nginx

    # Check logs
    journalctl -u nginx --no-pager | tail -10