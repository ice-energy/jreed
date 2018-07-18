---
title:  "MikroTik PapaBear Configuration"
date:   2018-07-18T12:19:00
tags:
- MikroTik
categories:
- Systems/Solutions
description : "MikroTik Configuration for the PapaBear is Wisp AP/Bridged"
draft: false
cover: "/jreed/img/cover_PapaBearConfig.jpg"
menu: main

---

![pic1](../img/PapaBearConfig.jpg)

---

# Quick Summary

This document has a series of screenshots along with explanations, that will
walk you through an example of setting up a MikroTik as the PapaBear Master.

The basic config strategy is:  **Wisp AP/Bridged**.

Translation: it's an WiFi Access Point to an existing network,
where all the traffic is bridged to the existing router.

In practice then, users can connect to this Access Point in the
standard way, and it's all one big happy (common) network.    The key
thing is that the usual discovery tools will find all CDC boards that
are up and connected.

> *Also note this configuration works with WiFi-to-WiFi connections*

---

# Install 'Winbox'

Winbox is a configuration tool from MikroTik.

[https://mikrotik.com/download](https://mikrotik.com/download)

Up towards the top of that page, *click on the 'Winbox' button*, which is really
a drop-down.  When it drops down, the version of Winbox will be shown.  At the
writing of this document, the version was 3.16.   *Click on it*, let it download,
then move it to the Desktop for easy access.

---

# Start with a knows Router Configuration

Here are the steps:

 - Start with MikroTik not powered
 - Get a small screwdriver or similar, use it to hold down the Reset button
 - With reset held down, power on the MikroTik (you need 3 hands!)
 - When Leds start to Blink (watch for them), release the Reset button
 - Wait about 15 seconds.    Good to go.

---

# Initial Connections

*Plug the ethernet of the MikroTik in to your existing network.*

Plug into an existing port on your switch or your router.
The discovery of the MikroTik device seems to work better when it is plugged in.

You could also plug the ethernet direct in to your PC.  I have verified
it works too.

# Use Winbox to Discover and Connect

*Double-Click on Winbox*, and let it run.    Click on the 'Neighbors' tab, and
the MikroTik should be discovered:

![pic2](../img/papa1.jpg)

It should self-discover.   Hit 'refresh' a few times if you don't see it.

Once it shows, *Single Click* on that entry to Highlight it,
*then hit 'Connect'*.






