ogn-init
========

Purpose
-------
A program which lets you set up a Raspberry Pi solely by writing to the /boot partition (i.e.  the one you can write from most computers!)

This variant is specific for Open Glider Network, derived from https://github.com/BytemarkHosting/pi-init2/

Usage
-----
From your desktop / laptop:

* Download and write a standard [Raspbian "jessie" SD card](https://www.raspberrypi.org/downloads/raspbian/)
* Unzip the latest release into the /boot partition
* Remove the SD card and put it into your Pi.

The Raspberry Pi should now boot into a headless Open Glider Network system. The first boot takes a few minutes depending on your network, and which model of Raspberry Pi you use (I tested with a model B).

You can edit these files:

* [appliance/etc/wpa_supplicant/wpa_supplicant.conf](appliance/etc/wpa_supplicant/wpa_supplicant.conf) - for wireless network credentials, if you're using a wireless adapter.

Building pi-init2
-----------------
I've included a script called 'build-and-copy' which I use from an Ubuntu system to build the [pi-init2](src/projects.bytemark.co.uk/pi-init2/init.go) program and create a zipfile to copy to the SD card boot partition. Any contributions appreciated.

A ssh flag file is also included to enable ssh within Jessie Lite.