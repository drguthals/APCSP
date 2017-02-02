This is the repository for Bootstrap 1 materials. This was taken from the original Boostrap repository (https://github.com/bootstrapworld/curr) and copied into this new repository to adapt to APCSP in December 2016.

This codebase is maintained by:
Sarah Guthals
Beth Simon
And undergrads 

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

Installation:

Install Racket: https://docs.racket-lang.org/pollen/Installation.html
NOTE: Mac and Linux users will have to add the Racket bin location to your PATH variable.

1.  Set up curr as a Racket collection.

    Go to the parent directory of APCSP, and do the following:

    $ raco link APCSP


2.  Go into the APCSP directory and run build.rkt to generate the curriculum.  You can do this either
at the command line, or from DrRacket. 

    $ racket build.rkt

    To generate the curriculum under a different tagging context,
    provide additional arguments to the build.rkt program.  e.g:

    $ racket build.rkt pedagogy group

    Under DrRacket, you can change your Language settings to include
    the tags as custom command line arguments.

