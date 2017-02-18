#!/bin/bash
# Quelle: c't 25/2016, S. 77

# SATA Link Power Management aktivieren
for i in /sys/class/scsi_host/host?/link_power_management_policy; do
	echo 'min_power' > "${i}";
done

# Energieverwaltung für den Audiocodec aktivieren
echo '1' > "/sys/module/snd_hda_intel/parameters/power_save"

exit 0
