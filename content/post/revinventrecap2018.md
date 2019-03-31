---
title: "AWS Re:invent Recap 2018"
date: 2018-12-04
tags:
  - cloud
  - aws
  - reinvent
---

Another year, another re:Invent down! 2018 had everything we have come to expect from AWS and re:Invent - releases, 
updates, sessions on everything and shots at Oracle. The focus this time was certainly on developer experience, Artificial
Intelligence/Machine Learning and Serverless.

There were at least sixteen new releases in regards to ML/AI. Sagemaker got new features in Ground truth and RL. There 
is now a marketplace for machine learning algorithm writers to release them and earn from all their hard work. DeepRacer
has to be the new wow release, another physical device for ML following the release last year of DeepLens. DeepRacer 
is a machine learning car that is programmed with simple python scripts. There is even a league now that customers 
can participate in at AWS events culminating in a championship at re:Invent.  

From the developer experience, IDE integrated are now available for Eclipse, Visual Studio and IntelliJ, as well as 
revamps to code pipeline, commit and deploy. DynamoDB On-Demand, where you only pay per request, you are no longer 
need to calculate your read/write capacities. CloudWatch Logs Insights allows developers to query their logs in AWS 
interactively across many services, Route53, Lambda, VPC and CloudTrail. Control Tower and Security Hub help simplify
administration of AWS accounts and increase the speed of onboarding developers and applications to AWS.

Serverless is a close first to center stage, with Firecracker being released as the biggest one. AWS has open-sourced 
Firecracker, which is the engine used to power Lambda. Ruby support was released for Lambda as well the custom 
frameworks, so now lack of language frameworks no longer hold customers back from using it. 

#### **Releases I Am Excited About**

[Outpost](https://aws.amazon.com/outposts/) - AWS on-premise, enough said. To help increase the adoption and migration 
to the cloud, AWS has released Outpost, where customers can now have AWS racks of servers and services right in their data centers. 

[VPC Transit Gateway](https://aws.amazon.com/about-aws/whats-new/2018/11/introducing-aws-transit-gateway/) - VPC networking can quickly become complex as you add more and more VPC’s that need interconnectivity and connection back to on-premise. VPC Transit Gateway greatly reduces the complexity, with one entry point for traffic and VPN connections between VPCs, even in different accounts and on-premise.

[DeepRacer](https://aws.amazon.com/deepracer/) - Another addition their Machine Learning platform, this is a fully autonomous 1/18th scale race car driven by reinforcement learning, 3D racing simulator and global racing league. AWS will now hold DeepRacer events which will culminate in a championship race. Machine learning is a hard and complex topic and AWS has helped simplify and make it fun with this new addition to their service.

[Control Tower](https://aws.amazon.com/controltower/) and [Security Hub](https://aws.amazon.com/security-hub/) - Security Hub is a single pane of glass for all your security related concerns inside your AWS accounts. Integration with CloudWatch Events allows you to send findings to ticketing, chat or email to alert teams. It also uses Config to set up automated security checks inside the account. Control Tower helps customers deploy AWS best practices based on the AWS well architected framework. This is across accounts as well, so business can now manage and enforce security and compliance regulations from one service. Both of these new services help increase the adaption of AWS services.

[Check out the full list of AWS Launches/Releases](https://aws.amazon.com/new/reinvent/)

#### **Sessions I Attended**

At re:Invent there are so many ways to ingest new AWS services and network with other customers. Sessions, chalk talks, 
certifications, ask the expert; with so many people and sessions, re:Invent took over The Strip with sessions at multiple 
sites. To keep travel to minimum, I kept all my sessions at the Venetian. To keep my focus, I centered around topics that 
I am interested in both professionally and personally, primarily Containers and Development, since that is what I work on 
with most of my clients. I also attended two data sessions, since that is where I am weakest in the stack. Additionally, 
since I got my start in Networking, I’m always fascinated about how AWS scales their network. Below are some highlights 
from each:

#### [CON301](https://www.youtube.com/watch?v=8OPkt93WyPA) - Mastering Kubernetes on AWS

An overview of Amazon Elastic Container Service for Kubernetes, EKS, was given by the Yaniv Donenfeld. 
“Local Dev is easy, move to production is hard” he stated, so with the help of EKS, developers and infrastructure 
engineers can global scale Kubernetes deployment. Donenfeld walked through several aspects of EKS.

Cluster Setup - EKS manages the master nodes for the customer.

Security - The same security you expect for EC2 and other AWS services is offered in EKS as well. AWS IAM access to other
 services, inside pods, is still in development. There are several solutions that can be used [inside kubernetes Pods](https://docs.google.com/document/d/1rn-v2TNH9k4Oz-VuaueP77ANE5p-5Ua89obK2JaArfg/edit) to 
 access AWS resources.

Networking - Two things of interest, AWS has their own CNI to work within the VPC and the [ALB supports EKS as well.](https://github.com/kubernetes-sigs/aws-alb-ingress-controller)

Logging - EKS is integrated with CloudTrail and CloudWatch. EKS also can be integrated with an ELK stack or use the 
AWS Elasticsearch Service.

Karl D'Adamo From Snapchat gave an overview of their migration to EKS. EKS allowed them to move to their “distributed monolith”.

#### [CON320](https://www.youtube.com/watch?v=rtk3rRdAZ6s) - Operational Excellence w/ Containerized Workloads Using AWS Fargate

AWS Fargate allows developers to deploy containerized applications without having to worry about clusters or servers. 
This alleviates the burden of managing servers and cluster from the team to allow them to focus on the business and 
not infrastructure.

Managed by AWS - no ec2 instances

Elastic - pay-as-you-go

Integrated - VPC ELB, IAM and cloudwatch, among others are integrated with Fargate

Some additional benefits are:

   * AWS patches the platform version
   * No direct infrastructure access
   * No privileged access
   * Task is a isolation boundary
   * Traffic goes thru ENI in your own VPC
   * VPC flow logs 

AWS labs has a Fargate Reference Architecture for CI/CD you can checkout [here.](https://github.com/awslabs/ecs-refarch-continuous-deployment)

Datree has 0 ec2 instances, let me repeat that, 0 ec2 instances in their accounts all things to Fargate and Lambda. Datatree started with managing their ec2 fleets with AMI’s and that soon become too much for the team.

Datree gave a demo of the pipeline listed below:

   * PR
   * Test and build with Travis CI
   * Determine ecs cluster using branch
   * Create new task def revision
   * Update ecs service with task def
   * Drain ALB
   * Destroy old task
   * Cleanup  

#### DAT327 - Automate the Creation of Secure Enterprise Resources During Migration  

This was my only Chalk talk that I went to. Chalk talks are smaller venues that allow the audience to interact with the speaker. In this talk, Verizon discussed how they overcame security and compliance regulations when deploying their Elasticache and EFS services.

All services were deployed via Jenkins and Ansible. The control in place for deploying Elasticache and EFS was a Jenkins plugin. It validates the options developers choose and then deploys them on the fly by generating Cloud formation templates for deployments.

#### [DAT406](https://www.youtube.com/watch?v=valsEK5mIQI) - Netflix: Iterating On Stateful Services in the Cloud

First question that you should ask yourself when managing stateful services is - should you?

Joey Lynch from Netflix discuss this with these questions:

   1. Do you need specific datastore API’s or services AWS does not offer?
   2. Do you need to be under full control of the SLA’s of the system?
   3. Are there specific regulatory requirements?
   4. Is it worth the cost to manage?
   5. Do you like debugging a distributed service?  

If yes, then these four strategies can help:

   0. Don’t manage state - Already passed this
   1. Mutate - Configuration management or package upgrades
   2. Migrate state with Client - Have the clients send data to the new services
   3. Mirror writes
   4. Wait
   5. Fail reads over
   6. Live launch reads from new cluster
   7. Retire old cluster
   8. Migrate state at the Server - Copy state from server to another 

I highly suggest watching the session on [youtube](https://www.youtube.com/watch?v=valsEK5mIQI), pros and cons of each are reviewed. Also some case studies inside Netflix using these strategies is review.

#### [DEV317](https://www.youtube.com/watch?v=Jnl29J3RJQ4) - Advanced Continuous Delivery Best Practices

Basic CI/CD best practices:

   1. Versioned source
   2. Automated build
   3. Automated deployment
   4. Deploy to many instances
   5. Unit tests
   6. Integration test
   7. Cont delivery process
   8. Operations dashboard 

AWS CodePipeline can help implement these best practices. Other safety mechanisms like health checks, rollback and alerts
can also be integrated in this pipeline.

AWS has [some samples](https://github.com/aws-samples/aws-codepipeline-block-production) used in this talk.

#### [NET403](https://www.youtube.com/watch?v=DXFooR95BYc) - AWS Direct Connect: Deep Dive

This session reviewed the basics of AWS Direct Connect. If you want a review and to understand Direct Connect, I highly suggest watching this talk.

Updates:

   * Supports jumbo frames now
   * Private links are accessible over Direct Connect now
   * Direct Connect gateway - aggregates DX connections for VPC
   * Support for multiple BGP connections over a single VIF 

![](/img/net403.png)

#### NET209-L - Leadership Session: Networking

Why Does AWS need their own backbone?

   * Security - Using AWS backbone instead of the Internet
   * Availability - Able to tune the network to reduce packet loss
   * Reliable Performance - Reducing Jitter is primary concern
   * Connecting Closer to Customers - A secure, available, reliable backbone allows customers to connect cluster to customers 

AWS Services that give customers access to the AWS backbone:

   * CloudFront - All traffic traverse the AWS backbone when using CF
   * Direct Connect - AWS backbone extension into your network
   * Inter-region VPC - Private connectivity between AWS regions 

New Network Services in AWS

   * Global Accelerator - Single Point of presence for your application that utilizes the AWS backbone
   * VPC Transit Gateway - VPC Transit Gateway greatly reduces the complexity, with one entry point for traffic and VPN connections between VPCs, even in different accounts and on-premise
   * Route53 resolver - This enables bi-directional querying between on-premises and AWS over private connections
   * ELB - Redirect support!
   * PrivateLink - A new service that allows customers to privately access select AWS services from their Virtual Private Cloud and from on-premises via AWS Direct Connect
   * Shared VPC - Allows VPC to be shared to other accounts, central oversight for Network engineers and reduces the complexity for App developers to deploy their applications 

Enjoy all the new services from AWS and see you next year at re:Invent!