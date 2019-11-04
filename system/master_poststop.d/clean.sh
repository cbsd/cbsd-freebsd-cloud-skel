#!/bin/sh

rm -f ${data}/etc/sshd/*_key* ${data}/root/.history
rm -rf ${data}/var/lib ${data}/root/.cache ${data}/root/.config ${data}/root/.local
truncate -s0 ${data}/var/log/*
cp -a /root/cbsd-freebsd-cloud-skel/root/cloud-apply ${data}/
cp -a /root/cbsd-freebsd-cloud-skel/root/usr/bin/blkid ${data}/usr/bin/blkid
cp -a /root/cbsd-freebsd-cloud-skel/root/etc/* ${data}/etc/
cp -a /root/cbsd-freebsd-cloud-skel/root/usr/local/bin/dynmotd.sh ${data}/usr/local/bin/
cp -a /root/cbsd-freebsd-cloud-skel/root/usr/local/etc/cloud/cloud.cfg ${data}/usr/local/etc/cloud/cloud.cfg
cp -a /root/cbsd-freebsd-cloud-skel/root/usr/local/etc/rc.d/cloudfinal ${data}/usr/local/etc/rc.d/
cp -a /root/cbsd-freebsd-cloud-skel/root/etc/mail/aliases ${data}/etc/mail/
cp -a /root/cbsd-freebsd-cloud-skel/root/etc/mail/aliases.db ${data}/etc/mail/
rm -rf ${data}/var/cache/pkg/*
rm -rf ${data}/var/tmp/* ${data}/tmp/*
rm -rf ${data}//var/cache/distfiles/*
truncate -s0 ${data}/etc/motd
