#!/bin/bash
CURRENT_BRANCH=`git status | grep "On branch" | awk '{ print $4 }'`
echo "Current branch is: $CURRENT_BRANCH"
#git fetch upstream-ro-fm
git checkout master && git fetch upstream-ro && git pull upstream-ro +master:master
#git fetch upstream-ro-xbmc
#git checkout master-xbmc && git fetch upstream-ro-xbmc && git pull upstream-ro-xbmc +master:master-xbmc
#attualizza openelec-4.0
git checkout openelec-4.0
git merge upstream-ro/openelec-4.0
git checkout $CURRENT_BRANCH
