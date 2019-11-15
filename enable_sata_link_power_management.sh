#!/bin/bash
# Quelle(n):  c't 25/2016, S. 77
#             c't 26/2016, S. 12
# Enable SATA link power management
for I in /sys/class/scsi_host/host?/link_power_management_policy; do
  echo min_power > $I;
done
