#!/sbin/sh

sleep 5
for i in $(seq 1 10)
do
   TMP=$(mount | grep /tmp)
    if [ -z "$TMP" ]
    then
        break
    fi
    umount -l /tmp
    sleep 1
done

busybox mount -orw,remount /
rm -r /tmp
mkdir -p tmp



