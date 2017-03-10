This is the repository for APCSP materials. This was taken from the original Boostrap repository (https://github.com/bootstrapworld/curr) and copied into this new repository to adapt to APCSP in December 2016.

This codebase is maintained by:
Sarah Guthals
Beth Simon

The following contributors worked on converting the original Bootstrap material in the
summer of 2012 at Brown University:

  Daniel Kocoj
  Mike Rowland
  Winnie Wang
  Kathi Fisler
  Jonah Stanley
  Miles Eldon
  Andrew Tian
  Katherine Ng


After the summer, the original Bootstrap codebase has been maintained by:

  Emmanuel Schanzer
  Kathi Fisler
  Vicki Crosson
  Emma Youndtsmith



----------------------------------------------------------------------

# Installation:

## Clone the Project
1. Open a terminal and go to the directory where you want this project to live on your machine.

2. Download git and Sign in to GitHub on your terminal:

   Mac: http://burnedpixel.com/blog/setting-up-git-and-github-on-your-mac/
   
   Ubuntu: https://www.howtoforge.com/tutorial/install-git-and-github-on-ubuntu-14.04/

3. ``` git clone git@github.com:sguthals/APCSP.git ``` (Can take a few minutes)

   *Note: You may need to run it with sudo*
  
4. *Mac Only*: You may need to agree to XCode.

## Download and Install Racket
1. Download from here: http://download.racket-lang.org/ (Can take a few minutes)

2. Open the installer, click through, drag the folder into applications. (Mac)

3. Add Racket to your PATH variable: 
  ```
  $ vim ~/.bash_profile
  ```
  Add this line to the .bash_profile file: 
  ```
  export PATH="/Applications/Racket v6.8/bin:$PATH
  ```
  Then re-load the .bash_profile:
  ```
  $ source ~/.bash_profile
  ```
  *Make sure you fill in your actual path to Racket*

4. Test racket and make sure it works: 
  ```
  $ racket
  Welcome to Racket v6.8.
  > 
  ```
  *CTRL-d to exit Racket*

5. Go to the parent of the APCSP project folder and type:
  ```
  $ raco link APCSP
  ```

## Download and Install pdftex
### For Macs:
1. Go to: https://www.tug.org/mactex/

2. Download the Smaller Download

3. Open the installer and follow the steps

### For Ubuntu or Windows
1. Go to http://www.tug.org/texlive/

2. Follow the instructions for Ubuntu or Windows, depending on which you're using

## Download and Install wkhtmltopdf
1. Go to: http://wkhtmltopdf.org/downloads.html

2. Choose your OS and download the package

3. Open the installer and follow the steps

## Download and Install pdftk
### For Mac 10.11:
1. Go here to download the pdftk package: https://www.pdflabs.com/tools/pdftk-the-pdf-toolkit/pdftk_server-2.02-mac_osx-10.11-setup.pkg

2. Open the installer and follow the steps

*NOTE: On https://www.pdflabs.com/tools/pdftk-server/ there is a version for Mac, but it is old and does not work, so make sure you use the one in the steps above*

### For Ubuntu:
1. Go here: https://www.pdflabs.com/tools/pdftk-server/

2. Scroll down to the very bottom and follow these instructions: (pasted here, but go to the link because there are links)
  ```
  Build PDFtk Server
  You can compile PDFtk Server from its source code. PDFtk Server is known to compile and run on Debian, Ubuntu Linux,   FreeBSD, Slackware Linux, SuSE, Solaris and HP-UX.

  Download and unpack: pdftk-2.02-src.zip (~2MB)
  Review the pdftk license information in: license_gpl_pdftk/readme.txt.
  Review the Makefile provided for your platform and confim that TOOLPATH and VERSUFF suit your installation of gcc/gcj/libgcj. If you run apropos gcc and it returns something like gcc-4.5, then set VERSUFF to -4.5. The TOOLPATH probably doesn’t need set.
  Change into the pdftk sub-directory,
run make -f Makefile.Debian (substitute your platform’s Makefile filename)
  We have built pdftk using gcc/gcj/libgcj versions 3.4.5, 4.4.1, 4.5.0 and 4.6.3. Pdftk 1.4x fails to build on gcc 3.3.5 due to missing libgcj features. If you are using gcc 3.3 or older, try building pdftk 1.12 instead.
  ```

# Build the Project
When you build the project for the first time, you need to build the workbook first:
```
$ racket build-workbook.rkt
$ racket build.rkt
```
From then on, if you are not making edits to the workbook, you shouldn't have to build the workbook.

# Making Changes
## Changing a Unit to Have Different Text
One of the easiest changes to make is to change a unit from Algebra to CS content. If you want to update the text to Unit 1, you have to change the ```the-unit.scrbl``` file found here:
```
$ cd courses/bs1/units/unit1
$ ls
bootstraplesson.js	codemirror.css		exercise-list.rkt	images			pretty-printing.css	scheme2.js
box.gif			codemirror.js		homeworks		logo.png		runmode.js		the-unit.scrbl
```
Then, head back to the home APCSP directory and re-build the projet:
```
$ racket build.rkt
```
Then, you can find the HTML file here:
```
$ cd distribution/courses/bs1/units/unit1
$ ls
backlogo.png		easyXDM.min.js		pict_11.png		pict_18.png		pict_7.png		scribble-common.js
bootstrap-helpers.js	exercises		pict_12.png		pict_19.png		pict_8.png		scribble.css
bootstrap.css		index.html		pict_13.png		pict_2.png		pict_9.png		scribble_2.css
bootstraplesson.js	json2.min.js		pict_14.png		pict_3.png		pretty-printing.css	textbook.css
box.gif			logo.png		pict_15.png		pict_4.png		pyret-mode.js		wescheme-embedded.js
codemirror.css		pict.png		pict_16.png		pict_5.png		runmode.js
codemirror.js		pict_10.png		pict_17.png		pict_6.png		scheme2.js
```
From there, you can open index.html and you will see the changes you made!

# From the original Bootstrap README
To generate the curriculum under a different tagging context, provide additional arguments to the build.rkt program.  e.g:
```
$ racket build.rkt pedagogy group
```
Under DrRacket, you can change your Language settings to include the tags as custom command line arguments.

