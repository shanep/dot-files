#!/bin/bash

# customize these
WGET=<path to wget>
ICS2ORG=<path to ical2org>
ICSFILE=<path for icsfile>
ORGFILE=<path to orgfile>
URL=<url to your private Google calendar>

# no customization needed below

$WGET -O $ICSFILE $URL
$ICS2ORG < $ICSFILE > $ORGFILE
