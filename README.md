## splitbeam
splitbeam is an OpenType font that have been designed to work in the user interface on [splitbeam.org](http://splitbeam.org/). splitbeam is an open source project. Download the repo and get the fonts in the `deploy` folder.

### Folder structur 

```
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

```

### Build from source
To buld the font from the original file:

#### Requirements
* FontLab 5.x on Mac OS X
* robofab (updated build)
* fontstep see [fontstep](https://github.com/signalwerk/fontstep)
* FLGlyphBuilder see [FLGlyphBuilder](http://scripts.sil.org/FLGlyphBuilder)

#### Steps
* open SplitBean-Regular.vfb 
* run FLGlyphBuilder with `controll.xml`
* run fontstep with `fontstep.xml`
* run `build.sh` from terminal
* enjoy `./deploy`

Alternative you can take `Splitbeam-Regular.ufo` and export a TTF (`font.ttf`) and OTF (`font.otf`) to `./build/Splitbeam-Regular` and run `build.sh` from terminal.

### License
* All designs are under [Creative Commons BY-NC-SA 3.0](http://creativecommons.org/licenses/by-nc-sa/3.0/). The Designers of the font are [Sonnenzimmer, Chicago](http://www.sonnenzimmer.com/)
* All code related files are dual-licensed under the [BSD 2-Clause license](http://choosealicense.com/licenses/bsd/) and the [GPL v3](http://choosealicense.com/licenses/gpl-v3/).

### Initial Authors
* Design & Concept: [Sonnenzimmer, Chicago](http://sonnenzimmer.com)
* Font Engineering: [Signalwerk, Zurich](http://signalwerk.ch)

### Getting Involved
We welcome all contributions or suggestions for changes. We manage contributions through [github](https://github.com/Sonnenzimmer/splitbeam-font/). So please place an issue in the tracker or send a pull request.
