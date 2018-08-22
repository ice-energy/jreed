---
title:  "MikroTik Client Configuration"
date:   2018-08-17T09:20:00
tags:
- MikroTik
categories:
- Systems/Solutions
description : "MikroTik Configuration for the PapaBear is CPE (Customer Premises Equipment)"
draft: false
cover: "/jreed/img/cover_MikroTikClient.jpg"
menu: main

---

![pic1](../img/MikroTikClient.jpg)

---

# Quick Summary

This document has a series of screenshots along with explanations, that will
walk you through an example of setting up a MikroTik as the Client.

The basic config strategy is:  **CPE**.   CPE is an abbreviation for Customer Premises Equipment.

Translation: it's a WiFi Bridge to a Wireless Access Point.

The WiFi Bridge is a substitute for a wired connection.  A setup like this can
be used instead of physically running ethernet cable.

---

# Connectivity Strategy

The following picture shows the connectivity scheme used with the MikroTik routers.

![pic1a](../img/connectivity.jpg)

The Wifi Bridge shown in the figure takes the place of an ethernet cable connecting the
CDC board with the switch.

---

# Install 'Winbox'

Winbox is a configuration tool from MikroTik.

[https://mikrotik.com/download](https://mikrotik.com/download)

Up towards the top of that page, *click on the 'Winbox' button*, which is really
a drop-down.  When it drops down, the version of Winbox will be shown.  At the
writing of this document, the version was 3.16.   *Click on it*, let it download,
then move it to the Desktop for easy access.

The winbox desktop icon is shown in the picture below.

![pic1b](../img/winbox_icon.png)

---

# Start with a known Router Configuration

Here are the steps:

 - Start with MikroTik not powered
 - Get a small screwdriver or similar, use it to hold down the Reset button
 - With reset held down, power on the MikroTik (you need 3 hands!)
 - When Leds start to Blink (watch for them), release the Reset button
 - Wait about 15 seconds.    Good to go.

---

# Make sure the PapaBear router is Configured and Setup


One of the Key steps in setting up the MikroTik Client is
the act of pairing it with the PapaBear Router.     In order
to do this, the PapaBear router must be up and working.

> If it is not up and discoverable, this Client installation will not work.


---

# Use Winbox to Discover and Connect

Use a PC that is not connected to any network.   Remove the ethernet cable if attached.
Disconnect any wifi that is currently connected.

With the PC now isolated from any network, plug in the ethernet cable of the MikroTik,
in to the PC.

> Having the MikroTik connected directly to the PC will sometimes help in the self-discovery.

OK, now double-click on ‘winbox’, and let it run.
Click on the ‘Neighbors’ tab, and the powered-on MikroTik should be discovered:

*Double-Click on Winbox*, and let it run.    Click on the 'Neighbors' tab, and
the MikroTik should be discovered:

![pic2](../img/papa1.png)

It should self-discover.   Hit 'refresh' a few times if you don't see it.

Once it shows, *Single Click* on that entry to Highlight it,
*then hit 'Connect'*.

---

# This is what you will see on the 1st connection

![pic3](../img/rpic2.png)

---

# Click on 'Quick Set' to bring up the configuration page

![pic4](../img/rpic3.png)

> As a point of note for later on in the configuration, the only other tab on this page that will be clicked on is:
>
> &nbsp; &nbsp; &nbsp; &nbsp;  **'Interfaces'**

The 'Interfaces' page is not needed until everything on the **Quick Set** page is complete

---

# Change 'WISP AP' to 'CPE'

![pic5](../img/rpic4.png)

> When 'CPE' is chosen from the Dropdown, the layout on the Dialog is drastically changed.

The default configuration is 'Access Point', a router-type where clients connect to it.
A router-type of 'CPE' is for clients that connect to the Access Point.
The dialog changes due to the differing setup requirements of the client.

---

# Select 'United States' from the Country Drop-Down.

![pic6](../img/rpic5.png)

I've seen times where just choosing the country and hitting 'Apply' will cause the connection
to go down.

If your connection goes down, run winbox again in order to re-connect.

---

# Modify 'Band' and then 'Channel Width' to discover PapaBear

![pic7](../img/rpic6.png)

> The goal is for PapaBear to show up in the list.  Follow these directions:

**Step 1.**  Change the Band to 2Ghz-B/G/N.

**Step 2.**  Change the Channel Width to: '20/40Mhz eC'.  Leave it like that for
just a bit, and 'IceBearPapa' should populate the list.     This step is due to a
quirk with the MikroTik.

**Step 3.**  When 'IceBearPapa' appears, Change the Channel Width to: '20/40Mhz Ce'.
Doing this will re-init the list, and 'IceBearPapa' should again appear.
**20/40Mhz Ce** is the intended final setting for Channel Width.

**Step 4.**  Hit Apply.   Re-connect if winbox loses communications with the unit.

---

# Connect to the PapaBear


![pic8](../img/rpic7.png)


Single Click on the 'IceBearPapa' name that was found in the scan.   The single
click will highlight the entry in blue.

Fill in the Password field.

Hit the Connect Button.

---

# Wait On and Observe Connection

![pic9](../img/rpic9.png)

The 'Status' field will eventually show: 'connected to ess'

Observe the signal strength graph at the bottom.  It should gradually move across the
screen as it updates.

---

# Configure as Bridge, change Name and Pass

![pic10](../img/rpic8.png)

1.  Configuration is 'Bridge'

2.  Address Acquisition is 'Automatic' (will get it using DHCP)

3.  Address source is Any

4.  Change the Router Identity to IceClient_<last_4_digits_of_MAC>.

5.  Change the password.  It's the same password as CDC Boards.  Ask John Reed.

6.  Hit 'Apply'

---

# Done with 'Quick Set'.   Next is 'Interfaces'.

1. Note that the Dialog has subtly changed.  The password fields are no longer there, now replaced with a 'Password' button.   If you happen to press it, you will be prompted to enter a new password.   You do not need to press the button.

2.  CPE configuration is done.   Click the little 'x', and the Dialog will terminate.

3.  Moving On!  Click the 'Interfaces' Tab.   A new Dialog should pop up.

---

# Enter Password for Router

![pic7](../img/papa5.png)

Note this is not the WiFi password: this is the Password that allows you
to edit this configuration.

*Enter the Secret Password*.  You should know what it is.

*Hit Apply*.

You're done.    You can hit 'OK', and exit out of Winbox.


 > Your PapaBear Router should be configured.

















