#!/system/bin/sh
MODDIR="${0%/*}"

# Wait until Android boot is completed so wm command works reliably.
until [ "$(getprop sys.boot_completed)" = "1" ]; do
  sleep 3
done

# Set display density (DPI).
wm density 411

# ZRAM and VM tuning.
echo lz4 > /sys/block/zram0/comp_algorithm
chmod 644 /sys/block/zram0/disksize
echo 25769803776 > /sys/block/zram0/disksize
chmod 644 /proc/sys/vm/swappiness
echo 160 > /proc/sys/vm/swappiness
