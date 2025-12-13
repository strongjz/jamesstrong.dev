---
title: "Cloud Native Summit Online Stream Experience"
date: 2020-04-27
tags:
  - cloud native
---

The Cloud Native Online Summit was a community event that had updates from all graduated CNCF projects - Kubernetes
, Prometheus, Envoy, Jaeger, Fluentd, Containerd, CoreDNS, Vitess, TUF. Along with conversations between the key SIG
 and WG contributors.

{{< youtube jv69-lSc1aA >}}

I was part of the Cloud Native Online summit team that helped put on the event. 

[@Abubakar Siddiq Ango](https://cloud-native.slack.com/archives/D012ZQXSYHF) Site Design

[@Ariel Jatib](https://cloud-native.slack.com/archives/D0117CCEZ28) Contributor

[@Kim McMahon](https://cloud-native.slack.com/archives/D011FDP57S9) CNCF Marketing Director

[@Kaitlyn Barnard](https://cloud-native.slack.com/archives/D011FNKHNBF) Marketing Consultant

[@Priyanka Sharma](https://cloud-native.slack.com/archives/D010VNSRP6D) Show Runner 

[@Zaki Mahomed](https://cloud-native.slack.com/archives/D012ZQWRZEV) Streaming Consultant

{{< tweet user="strongjz" id=1247520336330948608 >}}

For the event we used several pieces of technology to enable a collaborative and fun event

### Meeting

* Panelist: Zoom meeting 
* Breakouts: Separate Zoom Meeting 

### Streaming

* Stream: [Open Broadcast Software](https://obsproject.com/) 
* Polls: [Restream](https://restream.io/) with [OBS browser Plugin](https://obsproject.com/forum/resources/browser-plugin.115/)
* Twitter feed: https://twitterfall.com/ with OBS browser plugin
* Stream Source: OBS on my setup to Restream
* Stream Destinations: [Restream](https://restream.io/) to CNCF Youtube Live and Twitter via Periscope
* Music: [Epidemic Sound](https://www.epidemicsound.com/) was used for royalty free music

###  Online Summit Rundown 

The speakers, panelists and I joined Zoom. 

OBS streamed the Zoom to Restream, scenes for the overlays, and playing the music. 

OBS also allowed us to integrate plugins from Streamlabs for the polls.

![Polls](/img/2020-cloudnaitve-summit-polls.png)

Restream streamed to YouTube and Twitter, and pulled the all the chats as well from YouTube and
 Periscope. 

### Audio setup 

That is a bit more tricky especially on a Mac, windows it's a littler easier.

In order to stream the audio from Zoom to OBS a separate piece of software needed to capture audio.

On a Mac you need this [iShowU Audio Capture](https://support.shinywhitebox.com/hc/en-us/articles/204161459-Installing-iShowU-Audio-Capture)

Blog posts more about setting that up

https://obsproject.com/forum/resources/os-x-capture-audio-with-ishowu-audio-capture.505/

https://lofi-gaming.org.uk/blog/2016/09/17/capture-mac-desktop-audio-obs/

On Windows there is an OBS plugin available so no need for a separate install.

### Pricing

OBS is open source and free, but some functionality required subscriptions, here is that breakdown. 

https://www.epidemicsound.com/  $15/month personal 

Streamlabs  Prime $19/month

Restream  $41/month

I also have a [Elagto Stream Deck](https://www.elgato.com/en/gaming/stream-deck) that helps with scene transitions for
 OBS.  $149

### Other helpful sources

https://restream.io/blog/how-to-multistream-with-zoom/