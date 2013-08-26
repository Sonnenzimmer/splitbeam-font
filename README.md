## splitbeam
splitbeam is an OpenType font that have been designed to work in the user interface on [splitbeam.org](http://splitbeam.org/). splitbeam is an open source project.

### Folder structur 

```
– deploy                      >> Here you find the final Fonts to use in production

build.sh                      >> Shell script to build the final fonts
Gruntfile.js                  >> To automate the documentation of the font (grunt task)
package.json                  >> The npm definition to have the grunt task running (node package manager)

- build                       >> Files to build the final font and the documentation
    - doc                     >> for the grunt task to generate the documentation
    - Splitbeam-Regular       >> Folder for AFDKO to build the OTF and TTF
    - Splitbeam-Regular.json  >> Informations about the font as JSON
    - Splitbeam-Regular.pe    >> script for fontforge to build the svg font

- source
    SplitBean-Regular.vfb     >> FontLab File of the font
    controll.xml              >> see http://scripts.sil.org/FLGlyphBuilder
    fontstep.xml              >> see https://github.com/signalwerk/fontstep

```

### Build from source
To buld the font from the original file:

#### Requirements
* FontLab 5.x on Mac OS X
* robofab (updated build)
* fontstep see https://github.com/signalwerk/fontstep
* FLGlyphBuilder see http://scripts.sil.org/FLGlyphBuilder

#### Steps
* open SplitBean-Regular.vfb or an UFO of it 
* run FLGlyphBuilder with controll.xml
* run fontstep with fontstep.xml
* run build.sh from terminal
* enjoy `./deploy`

### License
* All designs are under [Creative Commons BY-NC-SA 3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/). The Designers of the font are [Sonnenzimmer, Chicago](http://www.sonnenzimmer.com/)
* All code related files are dual-licensed under the [BSD 2-Clause license](http://choosealicense.com/licenses/bsd/) and the [GPL v3](http://choosealicense.com/licenses/gpl-v3/).

### Initial Authors
* Design & Concept: [Sonnenzimmer, Chicago](http://sonnenzimmer.com)
* Font Engineering: [Signalwerk, Zurich](http://signalwerk.ch)

### Getting Involved
We welcome all contributions or suggestions for changes. We manage contributions through [github](https://github.com/Sonnenzimmer/splitbeam-font/). So please place an issue in the tracker or send a pull request.
