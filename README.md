pi-init
========
[![Build Status](https://travis-ci.org/israelshirk/pi-init.svg?branch=master)](https://travis-ci.org/israelshirk/pi-init)

Purpose
-------
A program which lets you set up a Raspberry Pi solely by writing to the /boot partition (i.e.  the one you can write from most computers!)

This variant is specific for Emlid's Navio2 project, derived from https://github.com/BytemarkHosting/pi-init2/, and which I use for rapidly wiping and re-flashing development drones in the US.

It currently takes care of:
* Keyboard layout and locale
* Framebuffer size (in case you're piping video through the PI and out through a VTX)
* Updating at boot
* Enabling arducopter and configuring it to listen on the address and TTY set in setup_vars.sh
* Timezone
* Expanding the root filesystem
* Rebooting on completion of the above

Usage
-----
From your desktop / laptop:

* Download and write a standard [Emlid Raspbian image](https://docs.emlid.com/navio2/common/ardupilot/configuring-raspberry-pi/)
* Unzip the latest release into the /boot partition
* Configure appliance/etc/wpa_supplicant/wpa_supplicant.conf for your network (if using a WiFi connection)
* Configure setup_vars.sh in the /boot partition to fit your needs for locale, time zone, arducopter settings, etc.
* Remove the SD card and put it into your Pi.

The Raspberry Pi should now boot into a headless system configured for arducopter. The first boot takes a few minutes depending on your network, and which model of Raspberry Pi you use (I tested with a model B).

You can edit these files:

* [appliance/etc/wpa_supplicant/wpa_supplicant.conf](appliance/etc/wpa_supplicant/wpa_supplicant.conf) - for wireless network credentials, if you're using a wireless adapter.

Building pi-init
-----------------
I've included a script called 'build-and-copy' which I use from an Ubuntu system to build the [pi-init2](src/projects.bytemark.co.uk/pi-init2/init.go) program and create a zipfile to copy to the SD card boot partition. Any contributions appreciated.

A ssh flag file is also included to enable ssh within Jessie Lite.