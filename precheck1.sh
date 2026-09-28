#!/bin/bash
LOGFILE="/var/log/precheck_$(hostname)_$(date +%F_%H%M%S).log"
exec > >(tee -a "$LOGFILE") 2>&1
echo "======================================"
echo " RHEL PATCHING PRE-CHECK"
echo " Hostname: $(hostname)"
echo " Date: $(date)"
echo "======================================"
echo
echo "### os version ###"
cat /etc/os-release
echo
echo "### kernal version ###"
uname -r
echo
echo "## mount points ##"
cat /etc/fstab
echo
echo "======================================"
echo " PRE-CHECK COMPLETED"
echo " Log: $LOGFILE"
echo "======================================"
