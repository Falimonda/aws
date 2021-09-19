#!/bin/bash

curl -sL https://rpm.nodesource.com/setup_16.x | sudo bash -
sudo yum install nodejs -y
sudo npm intall -g aws-cdk
cdk --version
if [[ $? -ne 0 ]];then
	echo "AWS CDK failed to install"
fi

cdk bootstrap aws://$ACCOUNT_ID/$AWS_REGION
