---
title: "Securing the Future of Ingress-Nginx"
date: 2024-11-15
tags:
- cloud
- kubernetes
- kubecon
- conference
---


Ingress NGINX is a very flexible Ingress controller that provides users with a lot of NGINX functionality through annotations. However, this flexibility also raises security concerns for maintainers and cluster administrators. There have been eight significant CVEs and RCEs in Ingress NGINX. To address these issues, we have created a security hardening guide, which will be presented as a preview in this talk. Additionally, we will enable restrictive features by default to offer a more secure out-of-the-box experience with Ingress NGINX such as annotation validations. To maintain and secure the project and its Gateway API implementation, we will not be adding any new features to the core functionality of ingress, and a significant amount of functionality, such as UDP/TCP Routing, will be moved to Gateway API. We will also unveil the new name of the project during this presentation.


{{< youtube KLwsV6_DntA >}}
