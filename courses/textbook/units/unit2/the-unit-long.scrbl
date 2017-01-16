#lang APCSP/lib

@declare-tags[group pedagogy selftaught]

@title{Contracts, Strings and Images}

@overview{
This unit will introduce you to a set-mapping representation for functions, in which the function object exists as a means of translating points
from a Domain into a Range. Coupled with their understanding of Circles of Evaluation, students generalize their understanding of functions to
include other datatypes, including Strings and Images. 

@objectives[@item{Learn Racket syntax and grammar, using the Circle of Evaluation}
        @item{Learn how to define values to be used later, as variables}
        @item{Learn syntax for simple strings and image-composition expressions}]
@product-outcomes[
        @item{Learn to make and manipulate the basic elements of their games--numbers, strings, and images}]

@tag[pedagogy]{
@materials[@item{Language Table (See below)}
            ]
 
@(language-table (list "Number" @code{+ - * / sq sqrt expt}))
}
}

@(include-lesson (lib "APCSP/lessons/Intro-to-Racket-and-Numbers/lesson/lesson.scrbl"))

@(include-lesson (lib "APCSP/lessons/Circles-of-Evaluation/lesson/lesson.scrbl"))
                             
@(include-lesson (lib "APCSP/lessons/Contracts/lesson/lesson.scrbl"))

@(include-lesson (lib "APCSP/lessons/Intro-to-Strings/lesson/lesson.scrbl"))

@(include-lesson (lib "APCSP/lessons/Creating-Images/lesson/lesson.scrbl"))

@copyright[]
