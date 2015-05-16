#!/bin/bash
CURRENT_BRANCH=`git branch |grep "*" | sed 's/* //g'`
echo "Current branch is: $CURRENT_BRANCH"
#git fetch upstream-ro-fm
git checkout master && git fetch upstream-ro && git pull upstream-ro +master:master
#git fetch upstream-ro-xbmc
#git checkout master-xbmc && git fetch upstream-ro-xbmc && git pull upstream-ro-xbmc +master:master-xbmc
#attualizza openelec-6.0
git checkout openelec-6.0
git merge upstream-ro/openelec-6.0
git checkout $CURRENT_BRANCH
