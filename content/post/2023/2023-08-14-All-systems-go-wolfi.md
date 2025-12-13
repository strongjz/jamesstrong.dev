---
title: "Wolfi: A Secure-by-Default Distro for Curing Container CVE Chaos "
date: 2023-08-14
tags:
- cloud
- kubernetes
- cve
- conference
---

Are you using container images with hundreds of known vulnerabilities?

The majority of us are using images based on the Docker official images available on the Docker Hub. This includes base images – such as Debian and Ubuntu – as well as application images such as nginx and redis. Unfortunately these images often have hundreds of known vulnerabilities due to excessively large dependency trees with out-of-date packages. This security debt can lead to unnecessary security risks and slower development cycles.

[Wolfi](​​https://github.com/wolfi-dev/) is a new Linux distribution optimized for building minimal, secure container images. Wolfi maintainers prioritize a rolling release model built on a rapid package update cycle, which ensures that new vulnerabilities are remediated quickly.

This talk not only describes the problems that motivate Wolfi but also provides hands-on knowledge to help developers take advantage of Wolfi. By the end of the talk, developers will learn about packaging techniques with apko and melange, tools specifically designed to build Wolfi packages and turn them into minimal, low- or no-vulnerability containers.

Key Takeaways and Highlights

Popular, off-the-shelf base images and containers often have hundreds of known vulnerabilities (“CVEs”), which can, at worst, be a security risk and, at best, be a giant time suck.
Wolfi is a new secure-by-default linux distribution that prioritizes rapid package updates and, by extension, fast mean time-to-remediation for known vulnerabilities.
Packages in Wolfi can form the foundation of secure, minimal base images and containers, freeing developers of tedious vulnerability management tasks and increasing security for cloud-native applications.


{{< youtube _GcmmjzuVRw >}}