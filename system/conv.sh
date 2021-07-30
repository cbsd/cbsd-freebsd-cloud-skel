#/bin/sh
ver="13.0"
fs="ufs"
#fs="zfs"
rm -f /tmp/cloud-13.0_amd64.img
cbsd jail2iso media=bhyve dstdir=/tmp efi=1 vm_guestfs=${fs} freesize=1800m jname=cloud applytpl=0
echo "zfs destroy zroot/ROOT/default/cbsd-cloud-FreeBSD-${fs}-13.0-RELEASE-amd64.raw"
echo "rm -f /usr/jails/src/iso/cbsd-cloud-FreeBSD-${fs}-13.0-RELEASE-amd64.raw"
echo "cp /tmp/cloud-13.0_amd64.img /usr/jails/src/iso/cbsd-cloud-FreeBSD-${fs}-13.0-RELEASE-amd64.raw"
