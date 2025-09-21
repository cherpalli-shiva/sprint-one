#!/bin/bash
# This Script to find failed SSH login attempts

grep "Failed Password" /var/log/auth.log > failed_ssh.log

echo "Found $(wc -l < failed_ssh.log) failed attempts"