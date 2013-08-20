#!/bin/bash
#compilazione

#con frodo pvr per ioint, per x86_64

DATE=`date +"%Y-%m-%d_%H%M%S"`

ARCHIT=i386
PRJ=Generic
XBMC_T=master

# enable if needed
#NFS_SUPPORT=yes

GIT_BRANCH=`git status | grep "On branch" | awk '{print $4}'`
GIT_SHASH=`git log -n1 --format=%h`
LOG_FILE="../make-oe_fm_dev-"$PRJ"_"$ARCHIT"-"$GIT_BRANCH"_"$GIT_SHASH"-"$DATE".log"

echo "Log file è: $LOG_FILE"
echo "per leggere il log:"
echo "less $LOG_FILE"

echo "`date +"%Y-%m-%d_%H%M%S"`" > "$LOG_FILE"

PROJECT=$PRJ ARCH=$ARCHIT XBMC=$XBMC_T SAMBA_SUPPORT=yes ISCSI_SUPPORT=yes BLUETOOTH_SUPPORT=yes CRON_SUPPORT=yes make release >> "$LOG_FILE" 2>&1

echo "`date +"%Y-%m-%d_%H%M%S"`" >> "$LOG_FILE"
