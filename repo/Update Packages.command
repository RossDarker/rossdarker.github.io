#!/bin/bash
cd "$(dirname "$0")"
dpkg-scanpackages -m ./Files > Packages


sed -i '' 's/file:\/\/\/Applications\/MarbleBlastMobile.app\/mbmIcon.png/https:\/\/rossdarker.github.io\/repo\/Files\/marbleblast\/icon_s.png/g' Packages

printf '%s\n' /'Name: Marble Blast Mobile'/a 'SileoDepiction: https://rossdarker.github.io/repo/Files/marbleblast/depiction.json' . w q | ex -s Packages


rm Packages.gz
rm Packages.bz2
gzip -c9 Packages > Packages.gz
bzip2 -c9 Packages > Packages.bz2