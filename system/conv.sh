#/bi/nsh
ver="12.2"
fs="ufs"
rm -f /tmp/cloud-12.2_amd64.img
cbsd jail2iso media=bhyve dstdir=/tmp efi=1 vm_guestfs=${fs} freesize=1800m jname=cloud applytpl=0
echo "zfs destroy zroot/ROOT/default/cbsd-cloud-FreeBSD-${fs}-12.2-RELEASE-amd64.raw"
echo "rm -f /usr/jails/src/iso/cbsd-cloud-FreeBSD-${fs}-12.2-RELEASE-amd64.raw"
echo "cp /tmp/cloud-12.2_amd64.img /usr/jails/src/iso/cbsd-cloud-FreeBSD-${fs}-12.2-RELEASE-amd64.raw"
