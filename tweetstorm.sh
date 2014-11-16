#!/bin/bash
THEDIR=$(pwd)
ttytter -exts=tweetstorm.pl -verbose=1 -rc=$THEDIR/.ttytterrc -keyf=$THEDIR/.ttytterkey
