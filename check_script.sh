#!/usr/bin/bash

echo ''
echo '############################'
echo 'step1 check XDG_CONFIG_HOME'
echo '############################'
echo ''

if [ -z $XDG_CONFIG_HOME ]; then
  echo 'Please set the "XDG_CONFIG_HOME" environment variable and try again.' >&2
  exit -1
fi
echo $XDG_CONFIG_HOME


echo ''
echo ''
echo '##############################'
echo 'step2 check maize.toml'
echo '##############################'
echo ''


if [ ! -e $XDG_CONFIG_HOME/maize.toml ]; then
  echo 'Please put maize.toml in $XDG_CONFIG_HOME.' >&2
  exit -1
fi
echo 'maize.toml exists ;)'

echo ''
echo ''
echo '#################################'
echo 'step3 print maize.toml'
echo '##################################'
echo ''
cat $XDG_CONFIG_HOME/maize.toml

