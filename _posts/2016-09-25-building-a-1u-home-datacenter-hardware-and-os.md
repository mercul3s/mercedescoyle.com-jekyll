---
layout: post
title: "Building a 1U Home Datacenter&#58; Hardware and Host OS"
tags:
- programming
- tech
type: post
published: true
date: 2016-09-25 09:43
---
My husband and I both work in the tech industry, and the two of us have amassed quite a collection of random bits of computer hardware and 1U servers affectionately known as pizza boxes. Once we decided to wire ethernet jacks in nearly every room in our house and install a rack in our basement, it just kept growing. A switch, router, and a mac mini became another switch, a hub, two NUCs, and a NAS in addition to all the other things we had in there. An empty rack is an invitation to fill it with hardware. Instead of setting up a headless Raspberry Pi on my desk, I can just add it to the rack. This setup worked reasonably well, until our 15 year old pizza box router hosting [pfSense](http://www.pfsense.org/)  started to die. As we both work remotely in a rural area, an unstable network is a serious disruption. We needed to replace the router, and it seemed reasonable to replace it with another pizza box. However, our NAS was also acting persnickety, as it likes to chew up and spit out disks, and my development environment (laptop with numerous vagrant virtual machines) was feeling a little cramped.

We started researching our options. Rather than buy a commercial rack mount router, we'd prefer to continue to use pfSense on our own hardware. We could have bought another [NUC](http://www.intel.com/content/www/us/en/nuc/overview.html) to run our router, but it only has one NIC, and it would be preferable to run our router over a physical NIC instead of a virtual one. So we started researching new servers. Even the most basic of servers would have more processing power than pfSense needs, since it's not very resource intensive. While hardware costs haven't gone down a ton, the amount of processing power, RAM, and storage you can get per dollar spent has increased dramatically. We could in theory save money by buying the most basic machine for our needs, but we'd still be overprovisioning and paying for unused compute power. Instead, it would make sense to try virtualizing our router and potentially other machines in the rack on a pool of compute resources.

Based on our current hodgepodge of equipment and desired server usage, we came up with the following criteria:

    * Ease of use
    * Pool of resources (disk, ram, CPU)
    * One management system for all machines

This led us to a couple of options. One: buy more NUCs, attach a disk array, and create a pool of networked resources with those NUCs. Two: buy one server with as much RAM, CPU, and disk as we could stuff in it, and run all of our hosts in a virtualized environment. Both options have pros and cons. The first option would potentially work with hardware we already had, and we could phase in and add new hardware as needed. However, it would be a bit cluttered in our rack, and would potentially increase power consumption as each new piece of hardware adds a new power supply. In this case we would also need to run a head node to manage resources in from all the other nodes, and would need at least two for redundancy, otherwise we'd have a single point of failure. So we might need to purchase more hardware in the long run, if we wanted all of our machines to have the same specifications and form factors. The second option solves some of the issue as it only runs two power supplies (for redundancy) but introduces the one box as a single point of failure. However, that failure is limited to the host OS or motherboard. If disks die, we can hot swap them and potentially not lose any data; if a power supply dies, we have a secondary to fail over.

We decided to order a server stuffed with RAM, CPU, and disk, with room to expand if needed. 2 8-core CPUs, 64GB RAM, 2 internal 120GB SSDs, and 16TB spinning disk in 4 bays, all hot-swappable, with 4 more bays for later expansion. The plan is to replace most of the hardware in the rack with virtualized instances: router and NAS were first on the list for replacement, followed by our farm camera server. In addition, it opens up a whole new range of possibilities. I've been wanting a home media server for ages, and I can easily do that in a virtual machine with the NAS as storage. Most of the work I've been doing over the past couple of years is with virtualized instances, so it's become habit to spin up a VM to test out new systems, databases, etc and trash them when I'm done using them. I'm looking forward to moving my current development workflows with config management and virtualization from my laptop to an actual server.

With all this power, we still need an OS for the host to control our VMs. When we were originally researching a replacement for our NAS, we were looking at rolling our own with [ZFS](http://zfsonlinux.org/), which would replace a traditional hardware RAID setup. ZFS is another method of pooling spinning disks and providing data redundancy. In addition, ZFS maintains the ZIL, which is a write log for all data before it hits a permanent home on disk. In our case, the ZIL will live on the 120GB ssd's, which should make our writes pretty efficient and stable. It looked like an interesting tool for our storage needs, so our host OS would need to support it. Our options were:

    * BSD, Centos, or Ubuntu running [Xen](http://xenserver.org/) on ZFS
    * [Illumos](http://illumos.org)
    * [SmartOS](http://www.joyent.com/smartos)

There are myriad other Virtualization host options to choose from, but we restricted our search to those running on ZFS specifically. What we intended to do was a trial week with each OS, to see what we did and didn't like about each solution. However, we got SmartOS up and running in no time, and were quickly provisioning VMs with a couple of commands and some JSON configs, and I have a feeling we're going to stick with it. Here's what I like about it:

    * Diskless OS: It runs in memory and boots from a USB key, so 100% of your host disk is available.
    * ZFS fully supported
    * Very straightforward to spin up new VMs using a Zone and a JSON config
    * Supports KVM, LX, and OS Virtualization
    * Well documented
    * Supports Chef out of the box

I have yet to fully explore all of the features, but after a weekend of playing around, I'm pretty happy with this setup. I'm excited to get started using config management and templating out some development machines for a few projects I'm working on. While I'm not completely enamored with Chef, it's integrated and I am familiar with it. I'm willing to continue using it to speed up my development process, as I already have some base cookbooks and a plethora of community cookbooks to get me started. 
