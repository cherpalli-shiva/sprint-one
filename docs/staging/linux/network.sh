# Networking
# Networking commands show IPs, Open Ports, & Connections, traffic, etc.

# Commands
    # ip a = show IP addresses
    # ip r = show routing table
    # ss -tulpn = show open ports & listening services
    # netstat -tulpn = show open ports 
    # curl -I http://example.com = fetch HTTP headers from a URL

# Exercise:
    ip a
    echo "See IP addresses"

    ss -tulpn | head
    echo "See open ports & listening services"

    curl -I http://example.com
    echo "Fetch HTTP headers from example.com"
    