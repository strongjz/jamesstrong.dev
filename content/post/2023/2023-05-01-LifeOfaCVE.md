---
title: "Life of a CVE with Ingress-Nginx; Understanding the Project's Release Cycle"
date: 2023-05-01
tags:
- cloud
- kubernetes
- networking
- ingress-nginx
- nginx
- cve
- kubecon
---

Life of a CVE with Ingress-Nginx; Understanding the Project's Release Cycle - James Strong, Chainguard & Dylen Turnbull, Nginx INC

Speakers: Dylen Turnbull, James Strong

In 7 years, Ingress-nginx has had 221 releases, with over 6800 commits. To ensure stability and to test this highly configurable controller, the project has grown to over 400 e2e tests and helm chart tests across various kubernetes versions and deployment landscapes. We were 3/4 through our stabilization project in the last maintainer track we presented. The ironic thing about OSS and software, in general, is that it is never really completed, nor should the stabilization and security of the project. In this talk, we discuss how we work to improve the release process of ingress-nginx to keep Ingress-nginx CVE-free with real-world examples. We will discuss the current release process and how we are working with sig-release and sig-security to increase release velocity, reduce complexity and increase the security of ingress-nginx. Please join us for this presentation if you want to hear about the ingress-nginx controller getting released & how we continue to improve it.


{{< youtube 6caVlIWohH0 >}}