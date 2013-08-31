## splitbeam
splitbeam is an OpenType font that have been designed to work in the user interface on [splitbeam.org](http://splitbeam.org/). splitbeam is an open source project. Download the repo and get the fonts in the `deploy` folder. [Web Font Specimen](http://sonnenzimmer.github.io/splitbeam-font/)

### Download
[Download Font](https://github.com/Sonnenzimmer/splitbeam-font/archive/master.zip) (fonts in `deploy` folder)

### Folder structur 

<pre>
– deploy                      >> *Here* you find the final fonts to use in production

build.sh                      >> Shell script to build the final fonts
Gruntfile.js                  >> To automate the documentation of the font (grunt task)
package.json                  >> The npm definition to have the grunt task running (node package manager)

- build                       >> files to build the final font and the documentation
    - doc                     >> for the grunt task to generate the documentation
    - Splitbeam-Regular       >> folder for AFDKO to build the OTF and TTF
    - Splitbeam-Regular.json  >> informations about the font as JSON
    - Splitbeam-Regular.pe    >> script for fontforge to build the svg font

- source
    SplitBean-Regular.vfb     >> FontLab source file of the font (see Build-Steps)
    Splitbeam-Regular.ufo     >> UFO File of the final font
    controll.xml              >> see http://scripts.sil.org/FLGlyphBuilder
    fontstep.xml              >> see https://github.com/signalwerk/fontstep
</pre>

### Build from source
To buld the font from the original file:


#### Requirements
* FontLab 5.x on Mac OS X
* robofab (updated build)
* [fontstep](https://github.com/signalwerk/fontstep)
* [FLGlyphBuilder](http://scripts.sil.org/FLGlyphBuilder)
* [Adobe Font Development Kit for OpenType](http://www.adobe.com/devnet/opentype/afdko.html)
* [sfnt2woff](http://people.mozilla.com/~jkew/woff/)
* [ttf2eot](https://code.google.com/p/ttf2eot/)
* Passion & Luck

#### Steps
* open SplitBean-Regular.vfb 
* run FLGlyphBuilder with `controll.xml`
* run fontstep with `fontstep.xml`
* run `build.sh` from terminal
* enjoy `./deploy`

Alternative you can take `Splitbeam-Regular.ufo` and export a TTF (`font.ttf`) and OTF (`font.otf`) to `./build/Splitbeam-Regular` and run `build.sh` from terminal.


### Special glyphs

####Standard Unicode
<pre>
glyph name      unicode   description
-------------------------------------------------------------------------
whitecircle     0x25cb    circle – no filling 
blackcircle     0x25cf    circle – black filling
envelope        0x2709    envelope
warningsign     0x26a0    warning sign
returnsymbol    0x23ce    return symbol
</pre>


####Private Use Unicode
<pre>
glyph name      unicode   description
-------------------------------------------------------------------------
fontversion     0xE000    version of font
logo            0xE002    the plain logo
logoeye         0xE004    just the eye of the logo
logobeam        0xE006    just the beam of the logo (width: 0)
logobeam.calt   0xE007    just the beam of the logo (width: standard)
logofill        0xE008    just the fill of the logo (width: 0)
logofill.calt   0xE009    just the fill of the logo (width: standard)
sparrow         0xE020    sparrow icon
printer         0xf036    printer icon – same unicode in  Windings 2
thumbbackup     0xf03c    thumbs up – same unicode in  Windings 2
                          In Unicode 6 there is 0x1f44d (thumbsupsign)
                          but this is not in the font becaus of missing 
                          Unicode 6 support in various clients.
zero.fitted     0xF639    --
one.fitted      0xF6DC      |
two.fitted      0xF63A      |
three.fitted    0xF63B      |
four.fitted     0xF63C      |-- proportional figures 
five.fitted     0xF63D      |   (name and encoding according to adobe)
six.fitted      0xF63E      |
seven.fitted    0xF63F      |
eight.fitted    0xF640      |
nine.fitted     0xF641    --
</pre>

### License
* All designs are under [Creative Commons BY-NC-SA 3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/). The Designers of the font are [Sonnenzimmer, Chicago](http://www.sonnenzimmer.com/)
* All code related files are dual-licensed under the [BSD 2-Clause license](http://choosealicense.com/licenses/bsd/) and the [GPL v3](http://choosealicense.com/licenses/gpl-v3/).

### Initial Authors
* Design & Concept: [Sonnenzimmer, Chicago](http://sonnenzimmer.com)
* Font Engineering: [Signalwerk, Zurich](http://signalwerk.ch)

### Getting Involved
We welcome all contributions or suggestions for changes. We manage contributions through [github](https://github.com/Sonnenzimmer/splitbeam-font/). So please place an issue in the tracker or send a pull request.
