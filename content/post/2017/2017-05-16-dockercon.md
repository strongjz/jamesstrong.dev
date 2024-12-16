---
title: "Dockercon 2017"
date: 2017-05-16
tags:
  - docker
  - conference
---

Before we dive into some of the highlights from [DockerCon 2017](https://2017.dockercon.com/), let’s do a quick overview 
of what Docker is. Quite simply, a “docker container” is a portable container, of sorts, that allows a collection of 
apps to run on any operating system. 

How is it possible, you ask, for a docker container to allow any app to “Build, Ship and Run,” as the docker motto says, 
on any OS? A docker container uses kernel features to produce resource isolation (CPU, memory, block I/O 
and more) as well as separate namespaces, to isolate the application’s view of the operating system 
(a visual depiction below).
 
Here’s a closer look at this process, using the docker motto as our guide:

### Build

Each container is a way of virtualizing the application, which requires only the libraries needed by the process to 
execute the program. Each container can be “constructed” from a simple file known as a Dockerfile.

Docker File

```
FROM httpd:2.4
COPY ./public-html/ /usr/local/apache2/htdocs/
```

Now Build it 

```
docker build . -t strongjz/example-httpd
```

### Ship

Docker containers can be packaged into an image and shipped anywhere, using either the [Docker Hub](https://hub.docker.com/)
or a [stand alone registry.](https://docs.docker.com/registry/)

```
docker push strongjz/example-httpd
```

### Run

Anywhere the Docker daemon can run, a docker container can run. 

```
docker run -p 80:80 strongjz/example-httpd 
```

So now, let’s take a closer look at the conference that brought the world of the docker container to life.

## DockerCon 2017
 
Dockercon 2017 was hosted this year in Texas. They say that everything's bigger in the Lone Star State, 
and this year’s DockerCon exemplified that -- with a host of Texas-sized sessions and announcements on tap. 
(To quickly immerse yourself in the experience, click here to take a gander at the Day 1 keynote session)

### [Day 1 Keynote](https://www.youtube.com/watch?v=hwkqju_BXEo)

Dockercon kicked off with some of the numbers of growth for Docker over the past four years. What truly resonated with 
me was the focus on the simplicity of docker for developers, and how security is ingrained in all components in the 
Docker ecosystem. 

Solomon Hykes, the founder and CTO of Docker, commented that one of Docker’s missions is to “create tools of mass 
innovations,“ and he outlined three necessary principles that "tools of mass invitations" should follow: 

* Tools should get out of the way
* Tools should adapt to you
* Tools should make the powerful simple

The next aspect of Docker that strikes me as unique is its focus on security. Diogo Monica, security lead at Docker, 
reiterated in his session during the keynote that you “can't bolt on security after the fact.” 

Monica discussed how Docker integrates security into their secure orchestration in the Docker ecosystem with Swarmkit; 
included is the Raft Store, node identity, Secret Routing Mesh, and Encrypted Networking. 

### [Day 2 Keynote](https://www.youtube.com/watch?v=2DUZ4Z6SYGg)

Day 2 began with a demonstration of Docker Trusted Registry and Docker’s Enterprise tool -- the Universal Control Plane.
It contains role-based access controls, swarm control, and Container scanning -- all tools and processes needed in the 
Enterprise to run containers securely at scale. The part of the day that caught my attention was the 
announcements of new features and enhancements:

* Linuxkit 
* Moby project
* Microsoft and Linux containers
* Oracle Databases and Docker

Linuxkit, open-sourced on stage at Dockercon 2017, is a toolkit for creating a custom Linux OS. It is built upon 
Docker's idea of creating "tools for mass innovations" and their philosophy of “batteries included, but swappable.” 

Linuxkit, developed in partnership with companies such as HPE, Intel, ARM, IBM, and Microsoft, is dubbed as a “secure, 
lean and portable Linux subsystem for the container.” It includes open source tooling that allows system builders to 
build custom Linux subsystems which only include precisely what the runtime platform needs and nothing else. 

More information [here](https://github.com/linuxkit/linuxkit)

The Moby project is another sign that Docker plans to “open-source” its platform and make it available for all to use. 
Hykes stated during the keynote talk that “if you are a system builder, it means you can collaborate and participate in 
defining systems more efficiently without being tied to Docker.” The best analogy to describe the Moby Project is that 
it is “to Docker what Fedora is to Red Hat Enterprise Linux.” Simply 
put, this means that now, anyone that wants to build specialized containers, can do so. 

The Moby Project has three core components:

A library of containerized back-end components (e.g., a low-level builder, logging facility, volume management, 
networking, image management, containerd, SwarmKit, etc.)

A framework for assembling the components into a standalone container platform, and tooling to build, test and deploy 
artifacts for these assemblies.

A reference assembly, called Moby Origin, which is the open base for the Docker container platform; as well as examples 
of container systems using various components from the Moby library or other projects.

More information on the Moby project here:

* https://github.com/moby/moby
* https://mobyproject.org/

Next, John Grossman, a Microsoft Azure architect, presented information on a development that is as surprising as it is 
unique: Linux containers running on a Windows host. Microsoft also was a platinum partner for Dockercon 2017. This 
announcement is no surprise for anyone paying attention -- Microsoft has been working with Docker for three years now. 

Another announcement from Grossman also captured the imagination: You now can run multiple different version of the 
Microsoft kernel on the same host. Said Grossman: “Each container gets its copy of the kernel for the isolation 
it needs, and yet you get more performance advantage or that shared kernel container.” 

This increasing even more what a developer can do with Windows and Docker -- no need to be tied to a specific Windows 
kernel version. 

#### Oracle and Docker

Developers can now run Oracle 12c in a Docker container. It’s as simple as that: Anyone who has had to manage, install,
or configure an Oracle database understands how huge this announcement is for the community. here is the link to 
[Oracle's Docker Store](https://store.docker.com/images/oracle-database-enterprise-edition?tab=description)  

The first set of certified images include:
 
 * [Oracle Database](https://www.oracle.com/database/index.html)
 * [Oracle MySQL](https://store.docker.com/images/mysql?tab=description)
 * [Oracle WebLogic Server](http://www.oracle.com/technetwork/middleware/weblogic/overview/index.html)
 * [Oracle Coherence](http://www.oracle.com/technetwork/middleware/coherence/overview/index.html)
 * [Oracle Instant Client](http://www.oracle.com/technetwork/database/features/instant-client/index-097480.html)
 * [Oracle Java 8 SE (Server JRE)](https://www.oracle.com/java/index.html)   

More about Day 1 at [Docker’s blog](https://blog.docker.com/2017/04/dockercon-2017-day-1-highlights/) and 
[Day 2](https://blog.docker.com/2017/04/dockercon-2017-day-2-highlights/)

Dockercon had several levels of talks, from use cases and deep dives to what they called “Blacks Belts.” Here are two 
black belts talks that are worth watching and running their demos on your own time to understand the inner works of 
the Docker ecosystem. 

#### Container Performance analysis

For those who don't know who Brendan Gregg is, they may know work, for instance, this infographic. 

![](img/dockercon_2017/linux_perf_dockercon.png)

In his Dockercon talk, he asks the question Is it the host or the container? Brendan Gregg gives an excellent presentation
on figuring out this question. This post describing the conference talk will not do it justice; anyone running containers
at scale should watch the discussion.

[Container Performance Talk](https://www.youtube.com/watch?v=bK9A5ODIgac) and 
[Slides](https://www.slideshare.net/mobile/brendangregg/container-performance-analysis)

#### Deep Dive in Docker Overlay Networks    

Laurent Bernaille, Architect from D2SI, discusses how networking overlay works in Docker Swarm and then dives into doing
just that with only Linux commands. Two Docker hosts running in AWS, the slides and code used are available on 
[GitHub](https://github.com/lbernail/dockercon2017) and [SlideShare](https://www.slideshare.net/lbernail/deep-dive-in-docker-overlay-networks).
These talks demonstrated the complexity involved with container overlay networking and how swarm simplifies it. 
Developers don't need to know all the Linux commands to create a network. Docker network creates a network, 
attaches a couple of hosts to it and your done. 

From Laurent presentation available at [SlideShare.](https://www.slideshare.net/lbernail/deep-dive-in-docker-overlay-networks) 

All videos are at the [Dockercon 2017 playlist](https://www.youtube.com/playlist?list=PLkA60AVN3hh_nihZ1mh6cO3n-uMdF7UlV)

Resources

* https://www.docker.com/what-docker
* https://en.wikipedia.org/wiki/Docker_(software)


