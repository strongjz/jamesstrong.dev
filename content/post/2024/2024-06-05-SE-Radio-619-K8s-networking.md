---
title: "SE Radio 619: James Strong on Kubernetes Networking"
date: 2024-10-03
tags:
- kubernetes
- podcast
- networking
---

Infrastructure engineer and Kubernetes ingress-Nginx maintainer James Strong joins host Robert Blumen to discuss the Kubernetes networking layer. The discussion draws on content from Strong’s book on the topic and covers a lot of ground, including: the Kubernetes network’s use of different IP ranges than the host network; overlay network with its own IP ranges compared to using expanded portions of the host network ranges; adding routes with kernel extension points; programming kernel extension points with IP tables compared to eBPF; how routes are updated as the host network gains or loses nodes, the use of the Linux network namespace to isolate each pod; routing between pods on the same host; routing between pods across the host network; the container-network interface (CNI); the CNI ecosystem; differences between CNIs; choosing a CNI when running on a public cloud service; the Kubernetes service abstraction with a cluster-wide IP address; monitoring and telemetry of the Kubernetes network; and troubleshooting the Kubernetes network

https://se-radio.net/2024/06/se-radio-619-james-strong-on-kubernetes-networking/

{{< iframe "https://podurama.com/player-gen?uuid=bf7b24de-7a97-5951-b2fc-42e0a8c4d625" >}}
