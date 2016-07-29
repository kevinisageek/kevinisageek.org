Title: Cryptographic ID
Date: 2016-05-20 18:30
Author: Kevin
Tags: cryptography, gpg, ssh, signal, verification
Slug: crypto-id
Status: draft

A couple days ago, [Peter posted about having a record of cryptographic information](http://pig-monkey.com/2016/05/id/) that folk can use to verify that he is who they think they are communicating with. I thought this was a good idea and set about [creating my own record](/id.txt).

The idea is broadly similar to [Keybase](https://keybase.io) but doing it this way means I am not relying on their system for providing verification. It does mean that there is less automation involved but it should be workable for everyone who uses GPG/PGP.

For the record, my current GPG key setup is less than ideal. The private key is held on my daily use machine which is not the most secure method. I have ordered a set of [smart cards and a USB reader](http://shop.kernelconcepts.de#openpgp) and I will regenerate my keys to be used on them on an air-gapped computer, likely running [Libreboot](https://libreboot.org/). When this happens, I will update the id file with my new public key fingerprint and also sign the file as before.

