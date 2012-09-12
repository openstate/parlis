#!/bin/sh

# $1 = file name

zcat $1  | tr [:punct:] ' '| tr [:cntrl:] ' ' | tr [:digit:] '\n'  | tr [:blank:] '\n' |awk '{if(length($0) > 3){print $0}}' | tr '[:upper:]' '[:lower:]' | sort |  uniq -c |  awk '{print "'`basename $1 .txt.gz`'", $0}' | tr ' ' '\t' >> /root/parlis/miningtxt/word_freq.tsv
#we are skipping sort -nr cuz not relevant for mysql


mv $1 /root/parlis/miningtxt/cptd
                                                





