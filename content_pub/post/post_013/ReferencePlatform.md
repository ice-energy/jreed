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

# CMD_READ_SCRATCHPAD

The following picture shows the 1-Wire Protocol for when the *CMD_READ_SCRATCHPAD* command is sent.

![pic2](../img/Read_Scratchpad.png)

     55, 28,FF,71,10,B2,17,01,FF, BE   (write)

Followed by:

     92,01,4B,46,7F,FF,0C,10,B5     (read)

Where:

     - 0xBE on the write-side is CMD_READ_SCRATCHPAD

     - 5th byte on the read side is SCRATCHPAD_CONFIG_REGISTER
            - 0x7F = TEMP_RESOLUTION_12_BIT

And here is the device id from the 1-Wire configuration:

```
ONEWIRE = {
  { Name='I0.OAt', id='FF0117B21071FF28', channel=1, slot=1 },
},
```

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








