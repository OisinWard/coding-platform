# Coding platform

## Purpose

To have a portable development environement defined by code. Reduce issues with having to re-configure environments.

## Software dependency versions

WSL 1 Ubuntu 22.04

Vagrant 2.3.7

VirtualBox Graphical User Interface Version 7.0.8 r156879 (Qt5.15.2)

## Other config

File /etc/wsl.conf should contain

```
[automount]
options = "metadata"
```

This is to fix file permission issues where wsl is not able to modify permissions on windows. It causes problems with ssh keys.
