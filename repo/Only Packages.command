#!/bin/bash
cd "$(dirname "$0")"
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2