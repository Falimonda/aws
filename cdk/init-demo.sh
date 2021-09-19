#!/bin/bash

if [[ ! -e demo ]];then
	mkdir demo
	cd demo
	cdk init app --language typescript
	npm run build
	npm install
	cdk ls
	npm install @aws-cdk/aws-s3
	read -p "Now modify lib/demo-stack.ts to define the s3 bucket for this stack. Then hit enter."
	cdk synth # only one stack is available in this app, otherwise this would be ambiguous and a stack name would need to be declared
	cdk deploy
	#cdk diff
	#cdk destroy
fi
