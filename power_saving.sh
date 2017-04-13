#!/bin/bash
# Quelle(n):  c't 25/2016, S. 77
#             c't 26/2016, S. 12

# SATA Link Power Management aktivieren
for I in /sys/class/scsi_host/host?/link_power_management_policy; do
  echo min_power > $I;
done

# Energieverwaltung für den Audiocodec aktivieren
echo 1 > /sys/module/snd_hda_intel/parameters/power_save

