#!/bin/sh

# remove the old deployed files
rm -r ./deploy/*

# build the documentation with grunt
grunt

# build the ttf-font and otf-font
cd ./build/Splitbeam-Regular/Roman

makeotf -f font.ttf -r
makeotf -f font.otf -r

# Convert the TTF font into EOT format.
# get ttf2eot from
# https://code.google.com/p/ttf2eot/
./ttf2eot Splitbeam.ttf > Splitbeam.eot

# Convert the TTF font into WOFF format.
# get sfnt2woff from 
# http://people.mozilla.org/~jkew/woff/
./sfnt2woff -v 1.008 -m metadata.xml Splitbeam.ttf

# Convert the TTF font into SVG format.
# get fontforge from 
# http://fontforge.org/
fontforge -script ../../Splitbeam-Regular.pe Splitbeam.ttf Splitbeam.svg

# better don't ask...
perl -p -i -e 's|<svg>|<svg xmlns="http://www.w3.org/2000/svg">|g' Splitbeam.svg
perl -i -pe 'BEGIN{undef $/;} s/<metadata>.*<\/metadata>/<metadata>Splitbeam Font<\/metadata>/smg' Splitbeam.svg

# go back to home
cd ../../..

# move everything to the right place
mkdir ./deploy/fonts

mv ./build/Splitbeam-Regular/Roman/Splitbeam.eot ./deploy/fonts/splitbeam-webfont.eot 
mv ./build/Splitbeam-Regular/Roman/Splitbeam.svg ./deploy/fonts/splitbeam-webfont.svg 
mv ./build/Splitbeam-Regular/Roman/Splitbeam.ttf ./deploy/fonts/splitbeam-webfont.ttf 
mv ./build/Splitbeam-Regular/Roman/Splitbeam.woff ./deploy/fonts/splitbeam-webfont.woff
mv ./build/Splitbeam-Regular/Roman/Splitbeam.otf ./deploy/fonts/splitbeam.otf
