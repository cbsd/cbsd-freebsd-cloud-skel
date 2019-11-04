#/bi/nsh
ver="12.1"
fs="ufs"
rm -f /tmp/cloudinit19-${ver}_amd64.img
cbsd jail2iso media=bhyve dstdir=/tmp efi=1 vm_guestfs=${fs} freesize=1800m jname=cloudinit19 applytpl=0
echo "scp -oPort=22222 /tmp/cloudinit19-${ver}_amd64.img oleg@172.16.0.200:/tmp/cbsd-cloud-FreeBSD-${fs}-${ver}-RELEASE-amd64.raw"
