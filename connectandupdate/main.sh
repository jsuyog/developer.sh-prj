#!/bin/bash

#variable for connecting
SSH_KEY="PATHOFKEYFILE" #paste the path of the .pem file
REMOTE_USER="ec2-user"
REMOTE_HOST="IPAddress" #paste the public ip of the remote server

#connect to remote server in aws paste the .pem file path in the same folder or change the path in the below command
echo "connecting the server"
ssh -i $SSH_KEY $REMOTE_USER@$REMOTE_HOST

#update the server
sudo yum update -y
