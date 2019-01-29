---
title:  "RPI Reference Platforms"
date:   2019-01-29T10:00:02
tags:
- "RPI"
- "ubuntu"
- "openwrt"
categories:
- development, linux
description : "Notes on Reference Platforms"
draft: false
cover: "/jreed/img/cover_ReferencePlatforms.JPG"
menu: main

---

![pic1](../img/IMG_1060.JPG)

---

# Quick Summary

A few notes about the Raspberry Pi Development Platforms

---

# What's in your kit?

 - 2 Raspberry Pi's
 - 3 sdcards:
     - 1 sdcard with Ubuntu Core installed
     - 1 sdcard with OpenWrt installed
     - 1 sdcard blank.
 - standoffs to raise the Pi off the desk
 - Power Supply
 - Serial Cable


---

# Result, pulse startup

Heres a scope screenshot showing the reset pulse.

![pic3](../img/scope_resetpulse.png)

Reset should be at least 480us.  Master releases bus (goes high)
Then Slave will take bus low for at least 60us.


---

# Byte Written

Screenshot showing a written byte.

![pic4](../img/scope_writebyte.png)

To read the byte written (think PIC acting in sniffer mode):
 - start clock on the falling edge
 - sample at about 30us   (yes, micro seconds)
 - 18us will work, then its all same


---

# Byte Read

Screenshot showing a byte to read.
This byte is written by the temp probe.

![pic5](../img/scope_readbyte.png)


To read the byte written:
  - start clock on the falling edge
  - sample at about 18us








