# Logs & Journals
# system logs = history of system events, managed by system-journald

# Commands:
    # journalctl -xe = recent logs(with errors)
    # journalctl -u ssh.service = logs for ssh service
    # ls /var/log = see log files(syslog, auth.log, dmesg)

# Exercise:
    # Trigger a failed ssh login (from another terminal ssh wronguser@localhost)
    echo "Trigger a failed ssh login from another terminal: ssh wronguser@localhost"
    grep "Failed password" /var/log/auth.log | tail -5

    grep "corn" /var/log/syslog | tail -10
    echo "See last 10 cron logs"

    grep "sshd" /var/log/syslog | tail -10
    echo "See last 10 sshd logs"

    grep -i "error" /var/log/syslog | tail -10
    echo "See last 10 error logs"

