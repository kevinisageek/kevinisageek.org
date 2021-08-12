Title: APC Network Card ARP Stuffing
Date: 2021-08-12 15:15
Slug: apc-arp-stuffing
Tags: apc, ups, networking, homelab

I am running most of my computer stuff via an APC UPS that I got from eBay. Having an unscheduled power outage is not a good thing - especially when hard drives are involved - so having some leeway in powering things down is always a good thing.

I had been using a USB cable to control the UPS via a server I have running but I figured I would try to get it on the network so that multiple machines can be informed about the power condition.

To that end, I bought a used [AP9619 network management card](https://www.apc.com/shop/us/en/products/UPS-Network-Management-Card-w-Environmental-Monitoring/P-AP9619) from eBay ([all sorts of stuff there!](https://www.youtube.com/watch?v=nUKgeAKTaXM)) which was reset by the seller. However, for the life of me, I could not get it to appear on the network. Some spelunking with [Wireshark](https://www.wireshark.org/) showed it to be making DHCP requests but for whatever reason, my router wasn't responding.

After a minor struggle I managed to get the thing working. First, you need to have the [`arp` command](https://www.man7.org/linux/man-pages/man8/arp.8.html) available. On Debian, that is in the [`net-tools`](https://packages.debian.org/bullseye/net-tools) package. Running `sudo arp -s 1.2.3.4 00:11:22:33:44:55` then `sudo ping 1.2.3.4 -l 113`, swapping the MAC address of the card and IP address you want the card to have gets your computer and the card talking. The gist of it is you are ["stuffing"](https://en.wikipedia.org/wiki/Address_Resolution_Protocol#ARP_stuffing) the ARP table of your computer with the IP address you want the MAC to resolve to and then using the oversized ping packet length, the device in question acknowledges the IP on a temporary basis. With APC network cards, the default credentials are apc:apc, a quick login and you can set the IP permanently. Clean up the ARP table with `sudo arp -d 1.2.3.4`.
