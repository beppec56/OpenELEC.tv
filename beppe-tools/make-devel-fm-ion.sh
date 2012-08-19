#!/bin/bash
#compilazione

#con frodo pvr per ioint, per x86_64

DATE=`date +"%Y-%m-%d_%H%M%S"`

GIT_BRANCH=`git status | grep "On branch" | awk '{print $4}'`
GIT_SHASH=`git log -n1 --format=%h`
LOG_FILE="../make-oe_fm_dev-"$GIT_BRANCH"_"$GIT_SHASH"-"$DATE".log"

echo "Log file è: $LOG_FILE"
echo "per leggere il log:"
echo "less $LOG_FILE"

echo "`date +"%Y-%m-%d_%H%M%S"`" > "$LOG_FILE"

PROJECT=ION PVR=yes XBMC=frodo ARCH=x86_64 make release >> "$LOG_FILE" 2>&1

echo "`date +"%Y-%m-%d_%H%M%S"`" >> "$LOG_FILE"
