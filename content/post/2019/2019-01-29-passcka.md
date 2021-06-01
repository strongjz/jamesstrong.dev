---
title: "Passing the CKA"
date: 2019-01-29
tags:
  - kubernetes
  - cloud native
  - cka
  - devops
  - containers
---


On December 29th I completed my final goal of the year - I passed the CKA.

![](/img/cka.png)

#### TL;DR

This is a list of the bare minimum necessary to try to pass.

   * Do Kelsey Hightower’s tutorial [Kubernetes The Hard Way](https://github.com/kelseyhightower/kubernetes-the-hard-way) at least three times! Understand it, internalize it.
   * Do all the tasks on https://kubernetes.io/docs/tasks/
   * Read [_Kubernetes in Action_ by Marko Luksa](https://www.manning.com/books/kubernetes-in-action)

Also practice, practice, and practice. Did I mention practice? This is a practical exam, no multiple choice questions here.

#### How I Got There

    Disclaimer: This is just how I got there, so your mileage may vary. I hope this is helpful to some of you.

What is Kubernetes? That has been covered all over the Internet, you can go [here](https://www.weave.works/technologies/the-journey-to-kubernetes/),
 [here](https://kubernetes.io/docs/concepts/overview/what-is-kubernetes/) and [here](https://www.redhat.com/en/topics/containers/what-is-kubernetes), 
 also [here](https://opensource.google.com/projects/kubernetes) to get a better understanding. What I am going to cover is 
 what I did in order to pass the exam and give a brief overview of the exam itself (as much as the NDA allows at least).

Working in IT as long as I have, I have learned the value of [R.T.F.M.](https://en.wikipedia.org/wiki/RTFM) So the first 
thing I did was go straight to the documentation. Everything is laid out on kubernetes.io for you and I would start on 
the [concepts page.](https://kubernetes.io/docs/concepts/)

Here is the list of books that are great supplements to the documentation. They are listed in descending order of my 
preference for the test. I prefer reading with the Kindle app since I can search for details in them.

   * [_Kubernetes in Action_ by Marko Luksa](https://www.manning.com/books/kubernetes-in-action)
   * [_Kubernetes Up and Running_ by Kelsey Hightower, Brendan Burns, Joe Beda](https://www.amazon.com/Kubernetes-Running-Dive-Future-Infrastructure/dp/1491935677)
   * [_DevOps with Kubernetes_ by Hideto Saito, Hui-Chuan Chloe Lee, Cheng-Yang Wu](https://www.amazon.com/DevOps-Kubernetes-Accelerating-container-orchestrators-ebook/dp/B0711KDB8N/)
   * [_The Kubernetes Book_ by Nigel Poulton](https://www.amazon.com/Kubernetes-Book-Version-January-2018-ebook/dp/B072TS9ZQZ)

With the CKA being a practical exam, you will need significant experience working with clusters—setting up clusters, 
fixing clusters, and backing up clusters. Here are several options to get started and more advanced ones as well.

#### Clusters I used for practice:

   * [Katacoda’s Kubernetes Playground](https://www.katacoda.com/courses/kubernetes/playground): no installs or setup, just tutorials on a cluster
   * [Minikube:](https://github.com/kubernetes/minikube/) local testing and getting comfortable with kubectl
   * [Google Kubernetes Enginer (GKE)](https://cloud.google.com/kubernetes-engine/docs/quickstart): by far the fastest way to get a multi node cluster running.
   * [Kelsey Hightower’s Kubernetes The Hard Way:](https://github.com/kelseyhightower/kubernetes-the-hard-way) the definitive way to learn how to set up a cluster. 

Katacoda is great for study purposes, it’s free and there is no setup or maintenance involved. If you’re just getting started,
 this is a great resource to get comfortable with kubectl. Contino has several [scenarios](https://www.katacoda.com/contino/courses/kubernetes) that can be used as well. The stopper here for Katacoda is there is no way to administrator the cluster.

Minikube is the next logical step for a beginner to try out, but it requires a little bit more to set up. You’ll need 
[minikube](https://kubernetes.io/docs/setup/minikube/), [virtualbox](https://www.virtualbox.org/) and 
[kubectl](https://kubernetes.io/docs/tasks/tools/install-kubectl/) installed on your local desktop. Once minikube is 
started, you can use it like any other cluster. One of the drawbacks is that it’s only one node so no testing multi 
node deploys or [cordoning](https://kubernetes.io/docs/concepts/architecture/nodes/#manual-node-administration) off nodes.

Google Kubernetes Engine is the easiest setup to get a multi node cluster. Sign up for a Google Cloud account, enable 
billing and deploy a cluster, more info [here](https://cloud.google.com/kubernetes-engine/docs/quickstart). This is a managed 
service from Google Cloud, so once deployed you can use it to do all the tutorials mentioned in this post. But being managed 
you can’t really “administrator” the cluster.

The above clusters are great for getting started using kubectl and deploying applications to a cluster. But to get a real
feel of what it takes to administer a cluster, you need to run through Kelsey Hightower’s repo 
[Kubernetes The Hard Way](https://github.com/kelseyhightower/kubernetes-the-hard-way).  You will “Bootstrap Kubernetes 
the hard way on Google Cloud Platform. No scripts.” This scenario best prepares you for the test in my opinion. 
Run through it several times, understand the options, why are so many certificates needed, what each component you deploy
does and how they interact with each other. If you can run through this several times and have complete comprehension of it,
then it will greatly help you in your journey to pass the exam.  

#### **BONUS**

This repo [here](https://github.com/arush-sal/cka-practice-environment) is great for a testing scenario. It gives you 
24 questions to answer, a terminal, and a timer. You bring the cluster and kube config. I highly suggest running through
 this to get comfortable with the test environment as this is the best replica for the test environment out there. 
 It uses the same terminal emulator that the test uses, [gateone](https://github.com/liftoff/GateOne).

Also the kubernetes.io site is forkable on github.com, so you can read docs on long flights.

#### Information About the Test:

   * 3 hours
   * 24 questions
   * Remotely proctored
   * Chrome browser plus an extension
   * Government-issued non-expired ID
   * Webcam and microphone

#### Tools Used:

   * tmux: this one is optional but does help on the exam. Know how to split screens and switch between them. You only get one console on the test.
   * vi: every edit and yaml file is done in vi. Be very comfortable navigating and editing files in vi, quickly.
   * Systemd: the test runs on Ubuntu 16 currently so know how to manipulate services running under systemd.
        [Digital ocean has a great intro to systemd post](https://www.digitalocean.com/community/tutorials/systemd-essentials-working-with-services-units-and-the-journal)
   * kubectl: well, obviously. Be extremely comfortable with this command.
   * cfssl/openssl: knowing how to generate certs (and what they are for) is important. Run through the hard way several times to be comfortable. 

Everything you will be tested on is in this [CNCF repo](https://github.com/cncf/curriculum). It is essential to understand every bullet point in that document. 
The CNCF Curriculum gives more details on what is required in each section.

#### Breakdown of the Test:

   - Application Lifecycle Management (8%)
   - Installation, Configuration & Validation (12%)
   - Core Concepts (19%)
   - Networking (11%)
   - Scheduling (5%)
   - Security (12%)
   - Cluster Maintenance (11%)
   - Logging / Monitoring (5%)
   - Storage (7%)
   - Troubleshooting (10%)

Example:

5% Scheduling

   -  Use label selectors to schedule Pods.
   -  Understand the role of DaemonSets.
   -  Understand how resource limits can affect Pod scheduling.
   -  Understand how to run multiple schedulers and how to configure Pods to use them.
   -  Manually schedule a pod without a scheduler.
   -  Display scheduler events.
   -  Know how to configure the Kubernetes scheduler.

Full list and details are [here](https://github.com/cncf/curriculum) for the current test on kubernetes 1.12. The test 
changes with each release of kubernetes.

#### Other resources from the CNCF

   * [Candidate Handbook](https://www.cncf.io/certification/candidate-handbook)
   * [Curriculum Overview](https://cncf.io/certification/cka-cirriculum)
   * [Exam Tips](https://www.cncf.io/certification/tips)

If you’re having trouble coming up with tutorials, Linux Academy has a great set of practice test questions in their 
course: [Certified Kubernetes Administrator (CKA)](https://linuxacademy.com/cp/modules/view/id/155)

The people over at Kubernetes have a few examples to walk through as well, so do all of them:

https://github.com/kubernetes/examples

Any and all other information about the exam can be found here: https://www.cncf.io/certification/cka/

One important side note, you are allowed to use and search kubernetes.io during the test. If you forget something, 
you can look for it on the site, but keep in mind you only have 3 hours (7.5 mins per question).

#### Day of the Test:

These aliases will help save the precious time you have. Use these during your studies, so you are used to them on the day.

```bash
alias kc='kubectl'

alias kgp='kubectl get pods'

alias kgs='kubectl get svc'

alias kgc='kubectl get componentstatuses’

alias kctx='kubectl config current-context’

alias kcon='kubectl config use-context’

alias kgc='kubectl config get-context'
```

Time is a big factor here, you have 3 hours to finish 24 questions. That's 7.5 mins per question and they do get 
progressively harder, so no wasting time on the easier questions. If you’re spending more than 7 mins on questions 
worth only one or two percent (each question does tell you the percentage it is worth), move on. You won't finish otherwise.
This is how I failed the first time, I just ran out of time.

Have your ID ready and your room prepared, no electronics or anything on your desk. My proctor even had me cover my 
bookshelves behind me with blankets. The full exam rules are available in the [Candidate Handbook.](https://www.cncf.io/certification/candidate-handbook)

If the test times out or there are other connectivity issues, just relax, the test is still there. Wait a couple minutes 
and refresh the page. The proctor is the true timekeeper. I had that happen on my first test, so I know how stressful that
 can be. The test came right back and I was back into it.

Prime yourself. A couple hours before the test, run through some scenarios, fire up minikube, and do some of the tasks. 
Get into the testing mood.  

Finally listen to this Spotify [playlist](https://open.spotify.com/user/1286544262/playlist/31lxxIDyC3qYrtH6TpGFwx?si=4eEWwJgoTiW2_LORc7g9pQ) an hour before the test—you'll do great!

Also here are [links](https://gist.github.com/strongjz/4c9ad30a12ab715ae94cf72d0e7bbc30) to other resources I found or read about. I didn't necessarily go through all of these but it might be helpful to others.

If you're looking to work on Kubernetes projects, Contino is always looking to hire talented DevOps engineers.

Tweet me [@strongjz](https://twiiter.com/strongjz) or leave a comment to let me know how you did.

Good luck!
