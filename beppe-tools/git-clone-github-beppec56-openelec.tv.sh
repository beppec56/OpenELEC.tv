#!/bin/bash
#esegue il clode del repo a github
#collector per le mie modifiche, duplicato in dsklnx2
lrepository=beppe-OpenELEC.tv
remote_repo=OpenELEC.tv.git

LOCALREPO=/srv5/git/OpenELEC.tv

git clone git@github.com:beppec56/$remote_repo $LOCALREPO/$lrepository

cd $LOCALREPO/$lrepository

#check out the master branch
echo "git checkout master"
git checkout master

#set the upstream repository
echo "git remote add upstream git://github.com/OpenELEC/OpenELEC.tv.git"
git remote add upstream git://github.com/OpenELEC/OpenELEC.tv.git
echo "git fetch upstream"
git fetch upstream

echo "to merge latest changes from master issue now:"
echo "git checkout master"
echo "git pull upstream +master:master"
echo "per generare un patch di un singolo commit:"
echo "git format-patch cde45aef^!"
echo ""
echo "per generare i patch delle modifiche, fino a HEAD:"
echo "git format-patch cde45aef"
echo "dove cde45aef è il la modifica immediatamente precedente alla prima"
echo "di cui si vuole il patch"
echo ""
echo "per attivare un nuovo branch a partire da un branch upstream:"
echo "git checkout upstream/<branch name>"
echo "git branch <branch name>"
echo "git push origin <branch name>"
echo ""
echo "Poi per aggiornare, eseguite:"
echo "git checkout <branch name>"
echo "git fetch upstream"
echo "git pull +<branch name>:<branch name>"
echo "git push origin +<branch name>:<branch name>"
echo ""
echo ""

echo ""
#echo "eseguite ./bootstrap prima di avviare la configurazione (../hs-xbmc-fm-output/auto-configure-devel.sh)"
