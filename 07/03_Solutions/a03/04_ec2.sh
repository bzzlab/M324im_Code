#!/bin/bash
#
# Copy this script to ~/.ssh
ssh -i "~/.ssh/educator.pem" -L 9001:localhost:9000 \
ubuntu@ec2-18-207-228-47.compute-1.amazonaws.com

