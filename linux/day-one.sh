✅ Day-1: Linux + Git
1. Linux Admin (3 hrs)

Core Topics

Process management: ps, top, htop, kill, systemctl status

Logs & journald: journalctl -xe, /var/log/

Networking: ip a, ss -tulpn, curl, netstat

SSH basics: ssh user@host, ~/.ssh/config

Services: start/stop with systemctl

Hands-On Tasks

Start/stop nginx (or apache2) and check logs in /var/log/.

Create a custom systemd service that runs a shell script.

Simulate high CPU:

dd if=/dev/zero of=/dev/null &
top


Kill it with kill -9 <pid>.




2. Git Practice (2 hrs)

Core Topics

git init, git clone, git status, git log

Branching & merging: git checkout -b feature-x, git merge

Rebasing: git rebase main

Pull requests (GitHub workflow)

Webhooks (just concept today, Jenkins integration on Day-8)

Hands-On Tasks

Create a repo linux-git-sprint.

Add a README.md and commit.

Create a branch feature/log-parser, edit file, merge into main.

Practice a rebase with dummy commits.

3. Mini-Task (2 hrs)

Goal: Write a shell script → parse logs → commit results.

Steps

Write a script parse_logs.sh that finds all failed ssh login attempts:

#!/bin/bash
grep "Failed password" /var/log/auth.log > failed_ssh.log
echo "Found $(wc -l < failed_ssh.log) failed attempts"


Make it executable:
chmod +x parse_logs.sh

Run and generate failed_ssh.log.

Add both files to Git and push:

git add parse_logs.sh failed_ssh.log
git commit -m "Add SSH failed login parser"
git push origin main

4. End-of-Day Checkpoint

 Can you explain difference between systemctl and journalctl?

 Did you practice branch → commit → merge → rebase?

 Is your mini-project pushed to GitHub?