#!/bin/sh

find ./txt -name "*.gz" -exec sh -c "sh compute_filefreq.sh {}"  \;
                                                





