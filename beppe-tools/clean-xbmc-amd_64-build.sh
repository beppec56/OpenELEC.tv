#!/bin/bash

echo "rimuove le istanze di xbmc-frodo-pvr dal corrente albero di build"
echo "l'albero di build è hardcoded"

BUILDDIR="build.OpenELEC-AMD_NVIDIA.x86_64-devel"

if [ -d "$BUILDDIR" ] ; then
  XBMC_DIR=`ls $BUILDDIR | grep xbmc-frodo-`
  echo "--->$XBMC_DIR"
  if [ "$XBMC_DIR" != "" ]; then
      rm -rf $BUILDDIR/$XBMC_DIR;
  fi
  rm -rf "$BUILDDIR/.stamps/xbmc"
  XBMC_DIR=`ls $BUILDDIR | grep xbmc-frodo-theme-Confluence-`
  echo "--->$XBMC_DIR"
  if [ "$XBMC_DIR" != "" ]; then
      rm -rf $BUILDDIR/$XBMC_DIR;
  fi
  rm -rf "$BUILDDIR/.stamps/xbmc-theme-Confluence"
else
  echo "l'albero di build non esiste"
fi

echo ""
