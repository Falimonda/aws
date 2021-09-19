## aws > cdk

Terminology:
	- CDK : used to define a CDK application ultimately resulting in a CloudFormation config that can be deployed
	- Application : A CDK application can contain one or more stacks
	- Stack : A stack defines AWS resources, thier scope within the application, their ID within the stack, and their properties

	- Synthesizing a stack compiles (in the case of typescript) stack definition code to prepare it for deployment ( cdk synth )
	- Deploying the stack creates or changes resources (cdk deploy) - synthesis will be carried out if it was not already
