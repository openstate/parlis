#!/bin/sh



wget -qmnp http://data.appsvoordemocratie.nl/metadata/


mkdir udata
cp -p data.appsvoordemocratie.nl/metadata/*.gz udata/
cp -p data.appsvoordemocratie.nl/metadata/*.bz2 udata/
rm udata/metadata*


gunzip -f udata/*.gz
bunzip2 -f udata/Zaken.tar.bz2
tar xvf udata/Zaken.tar -C udata/
mkdir udata/ActiviteitRelaties/
tar xvf udata/ActiviteitRelaties.tar -C udata/ActiviteitRelaties/


