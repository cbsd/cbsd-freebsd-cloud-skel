#!/bin/sh

rm -f ${data}/root/.history
rm -rf ${data}/var/lib ${data}/root/.cache ${data}/root/.config ${data}/root/.local
truncate -s0 ${data}/var/log/*
cp -a /root/cbsd-freebsd-cloud-skel/root/cloud-apply ${data}/
#cp -a /root/cbsd-freebsd-cloud-skel/root/usr/bin/blkid ${data}/usr/bin/blkid
cp -a /root/cbsd-freebsd-cloud-skel/root/etc/* ${data}/etc/
cp -a /root/cbsd-freebsd-cloud-skel/root/usr/local/bin/dynmotd.sh ${data}/usr/local/bin/
cp -a /root/cbsd-freebsd-cloud-skel/root/usr/local/etc/cloud/cloud.cfg ${data}/usr/local/etc/cloud/cloud.cfg
cp -a /root/cbsd-freebsd-cloud-skel/root/usr/local/etc/rc.d/cloudfinal ${data}/usr/local/etc/rc.d/
rm -f ${data}/etc/ssh/ssh_host_*
rm -rf ${data}/var/cache/pkg/*
rm -rf ${data}/var/tmp/* ${data}/tmp/*
rm -rf ${data}//var/cache/distfiles/*
rm -f ${data}/var/log/cloud-apply.log

for i in /var/run/motd /etc/motd.template /etc/motd; do
	truncate -s0 ${data}${i}
done

for i in /etc/profile /etc/csh.login /usr/local/etc/zlogin; do
	[ ! -r ${data}${i} ] && continue
	if ! grep -q dynmotd ${data}${i}; then
		echo '/usr/local/bin/dynmotd.sh' >> ${data}${i}
	fi
done
