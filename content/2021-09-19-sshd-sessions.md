Title: Increasing sshd Sessions
Date: 2021-09-22 09:00
Slug: sshd-max-sessions
Tags: sshd, docker, ansible

While playing around with Docker in my homelab, I was trying to get [docker-compose](https://docs.docker.com/compose/) to control another machine directly via [contexts](https://docs.docker.com/engine/context/working-with-contexts/), instead of having to continually copy the compose file over and run it. However, I kept getting messages along the lines of ``Secsh channel 10 open FAILED: open failed: Connect failed``.

While its probably not the neatest solution out there, increasing the number of sshd connections seems to be a decent workaround. On Debian, the default is 10 which is probably adequate for most folk. However for me, this is too low.

The easiest way I have found to do this is to put the ``MaxSessions 100`` stanza required in a separate file called ``/etc/ssh/sshd_config.d/10-maxsessions.conf`` which also has the advantage of [being manageable by ansible](https://docs.ansible.com/ansible/latest/collections/ansible/builtin/copy_module.html). If the server needs rebuilt, I can run the playbook after a fresh install and the job is done for me.
