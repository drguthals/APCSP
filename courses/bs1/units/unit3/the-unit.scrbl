#lang APCSP/lib
@declare-tags[]

@title{Unit 3: Alice Boat Race Tutorial Part 1}

@unit-overview/auto[#:lang-table (list (list "Number" @code{+ - * / sqr sqrt expt})
                                       (list "String" @code{string-append string-length})
                                       (list "Image"  @code{rectangle circle triangle ellipse star text scale rotate put-image}))]{
  @unit-descr{By the time your students have finished this project they will have an understanding of Methods, lists, for each loops, user input, events, if-statements, while-loops, boolean expressions, printing directions to users, commenting, mathematical expressions. The end of the lesson provides an opportunity to use these topics freely to create an original ending to the race.
}
}
@unit-lessons{
@lesson/studteach[
     #:title "Introduction"
     #:duration "5 minutes"
     #:overview ""
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list "BS-PL.2" "6.NS.5-8" "F-IF.1-3")
     #:materials @itemlist[@item{Pens/pencils for the students, fresh whiteboard markers for teachers}
                            @item{Class poster (List of rules, language table, course calendar)}
                            @item{Language Table (see below)}]
     #:preparation @itemlist[@item{OPTIONAL: Hand out @(hyperlink "https://docs.google.com/document/d/1FN2uLBnwdk3N4Ci6-qf1n6z-M8KpToo27wqZmRlS5as/edit?usp=sharing" "Warmup activity sheet").}]
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[@point{@student{In this activity you will be learning about many new programming techniques! Before we start let’s turn to page ### in your notebook. 
                                @activity[#:forevidence (list "BS-PL.2&1&1" "6.NS.5-8&1&2")]{
                                     Can you think of three functions that draw shapes? See if you can write their contracts without
                                     needing to look back at your Contracts page. What type of data is always surrounded in quotes?
                                     What are the coordinates for the bottom left-hand corner of the screen? What about the top-right?
                                     }
                                }
                        @teacher{Review Circles of Evaluation, paying special attention to @vocab{types} and @vocab{contracts}. 
                                            Make sure that students are comfortable hearing - and using - the proper terminology to describe code.}
                        }
                 ]}

       
@lesson/studteach[
     #:title "Watching a Movie"
     #:duration "10 minutes"
     #:overview "Students observe and recognize different objects (boat, starfish, timer) and write them down."
     #:learning-objectives @itemlist[]
     #:evidence-statements  @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list)
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:prerequisites (list)
     #:pacings (list)
      ]{
        @points[@point{@student{This movie shows the finished version of the project you are about to begin. Let’s dissect the video and think about what’s going on in it.}
                        @teacher{}}
                 @point{@student{Let’s begin by writing down all of the objects we see in the beginning of the video. List all of them. Here’s a screenshot: @vocab{add picture}
                               }
                        }
                 @point{@student{Fill out this table with SIX objects you see.}
                        @teacher{The text blocks count as objects.}
                        }
                @point{@student{Next, let’s think about the methods that we’re going to need to implement in order to match the functionality of the Alice program in the video. List four things you notice that change and a method you would need to make that thing change. Here’s a link to the video for you to rewatch LINK
                          }
                        @teacher{It's important for students to develop technique that allows them to visualize and plan ahead when coding. By knowing what objects they will be using and how those objects should behave, students can develop mental plans for how their code will be implemented.}
                        }
                 ]
}
       
@lesson/studteach[
     #:title "Debugging activity"
     #:duration "5 minutes"
     #:overview ""
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list "7.EE.3-4" "A-SSE.1-2")
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:prerequisites (list "Defining Variables")
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[
             @point{@student{Before we begin let’s introduce the concept of debugging! As humans, we will make mistakes in our code and it is important to be able to find those mistakes. The instructions for this project will purposely include a handful of bugs so that you can develop some experience with debugging. Every time we encounter a bug we will turn to page ### in our notebooks and brainstorm about what’s happening in our code.}
                     @teacher{}
                     }
              @point{@student{Here’s the table that we will fill out:}
                      }]
         }
     
@lesson/studteach[
     #:title "Making an Obstacle Course"
     #:duration "20 minutes"
     #:overview "Students begin their code by creating an obstacle course to race through."
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[@item{Students will name their videogame project}]
     #:standards (list "BS-PL.3")
     #:materials @itemlist[@item{Student @resource-link[#:path "workbook/StudentWorkbook.pdf" #:label "workbook"] folders with names on covers.}]
     #:preparation @itemlist[@item{Students are logged into WeScheme.org, OR have opened DrRacket.}
                             @item{Create student game files. [See the teacher's guide, located in the @(hyperlink "http://www.BootstrapWorld.org/materials/Spring2014/courses/bs1/resources/teachers/" "protected materials") for this course.]}
                              @item{On student machines: Student Game Files (generated from "Game" template [Game.rkt from @resource-link[#:path "source-files.zip" #:label "source-files.zip"] | @(hyperlink "http://www.wescheme.org/openEditor?publicId=RHBJYscAWj" "WeScheme")])}]
     #:prerequisites (list "Defining Values" "Strings and Images" "Brainstorming")
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[@point{@student{Let’s start by opening a WATER TEMPLATE WORLD in Alice.}}
                 @point{@student{Now we need something to race in the water with. Let’s add a WOODEN BOAT to your world.}}
                 @point{@student{Let’s CHANGE THE CAMERA to be in second-person– zoom in until your boat is in the middle of the screen:}}
                 @point{@student{To make it easier on ourselves when we move the camera to somewhere else, we’re going to add a camera marker so that we can get back to this exact point of view whenever we want.}}
                 @point{@student{On the right side of your screen is the properties inspector! Throughout the project we will be using this inspector to alter many of our object properties, but for now we’re just going to make a camera marker.}}
                 @point{@student{Once you’ve positioned your boat just right, click the “add camera marker...” button:}}
                 @point{@student{Next, we need some type of object to act as goals. (In my video I used pumpkins, but you can use anything you want! Be creative)}}
                 @point{@student{Place them in a path in front of your boat. This will serve as the course that your boat will drive through.}}
                 @point{@student{Again, be creative. Your boat will drive through your course. Create it however you like.}
                  @teacher{Your students can choose whatever object you want however ALL OF THE OBJECTS IN YOUR COURSE MUST BE THE SAME. We will be making a list with these objects later so they NEED to be of the same type}}
                 @point{@student{NOTE: The boat will move slowly so it may be a good idea to place your objects close together}}
                 @point{@student{After you’ve placed your objects click on the button to move the camera to our marker}
                  @teacher{This button is under camera markers in inspector where we made the camera marker earlier.}}
                 @point{@student{Congrats! You’ve set up a course for your boat to race through}}
             ]
         }
       
@lesson/studteach[
     #:title "Let's Make a Timer"
     #:duration "25 minutes"
     #:overview "Students are get a taste of the Design Recipe, but primarily they're introduced to the syntax for function definition."
     #:learning-objectives @itemlist[@item{Students will be able to define very simple functions, given a simple word problem.}]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[@item{Students will define at least two functions, using the Design Recipe}]

     #:exercises (list (make-exercise-locator "Defining-Functions" "match-examples-functions1")
                       (make-exercise-locator "Defining-Functions" "create-contracts-examples1")
                       (make-exercise-locator "Defining-Functions" "create-contracts-examples2"))
     #:standards (list "F-IF.1-3" "F-IF.4-6" "F-BF.1-2" "BS-PL.3" "BS-DR.1" "BS-DR.2" "BS-DR.3")
     #:materials @itemlist[@item{Student @resource-link[#:path "workbook/StudentWorkbook.pdf" #:label "workbook"] folders with names on covers.}]
     #:preparation @itemlist[]
     #:prerequisites (list "Contracts" "Stings and Images" )
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
                 ]{
                   @points[@point{@student{Let’s make the timer that you saw in the video. In our world editor, select a “new text model” from under shapes/text}}
                            @point{@student{Name it “timer” and set the value to “0”}}
                            @point{@student{Place the timer on top of your boat}
                             @teacher{Your students COULD drag and drop the 0 OR we could change its x and z coordinates to match that of the boat’s!}}
                            @point{@student{Access the coordinates in the timer’s properties in the inspector and change them to match the boats (then change the y value to 0.45)}}
                            @point{@student{Because the boat moves through the world as we race it, we’re going to want the timer to move with it! Under the timer’s properties, change the “Vehicle” variable to equal this.woodenBoat.}}
                            @point{@student{Now we need to to write a method to make our timer work! Start by exiting scene setup and moving to the scene properties. Click on “Add a scene property...” at the bottom of the window}}
                            @point{@student{We will be adding a variable to keep track of the time remaining in the timer. Change the value type to “Whole number”, name it timerValue, and initialize it to a custom whole number “25”}
                             @teacher{Why did we make this a global variable instead of a local variable inside of the timer method?
Because we will be using it in more than one place in our code!
There is a very important difference between local and global variables
Local variables: Declared inside a method. These are only accessible inside the method in which they are created. Their data is instantly destroyed once the method stops running.
Global variables: Declared in the class. These are accessible by anything within the class (i.e. in methods within the class). 
}}
                            @point{@student{Now we’re going to create the actual method. This method will be in charge of decreasing the timer so let’s call it timerDecrease. In our scene properties, add a new scene procedure.}}
                            @point{@student{We want this method to count down WHILE there is still time left in the timer, so select a while loop and initialize it to true}
                             @teacher{If the timerValue is greater than 0, there is still time left in the race, so that’s what our condition in the while loop will be.}}
                            @point{@student{Click on true in the while loop, select “Rational (Whole Number)”, the greater than operator, this.timerValue, and then 0 (See picture below)}}
                            @point{@student{The next thing we want is for the timer to count down. We can do this by having the timer value subtract 1 from its original value.}}
                             @point{@student{Under “this” there is a “set timerValue” method (See picture). We will be using this to alter the timerValue variable.}
                                    @teacher{}
                                    }
                             @point{@student{Drag it into the while loop and select “this.timerValue”}}
                           @point{@student{If we click on the “this.timerValue” a series of drop down menus will appear.}}
                           @point{@student{Select “math”, “this.timerValue - ???”, and then 1}}
                           @point{@student{Now we need to alter our timer object (the one in the boat) to match the value of our timerValue}}
                           @point{@student{Let’s switch to the timer object so that we can access its procedures}}
                           @point{@student{Then, select the “setValue” procedure and drag it into the while loop. It will prompt you to set a value, do not enter anything so that we have an empty string.}}
                           @point{@student{Now we’re going to set the value equal to the timerValue.}}
                           @point{@student{Click on the empty string in “setValue” and a drop down menu will appear.}}
                           @point{@student{Select “ “” + ???”, “WholeNumber”, and then “this.timerValue”}}
                           @point{@student{To get our timer to count down every second, we need to add a delay. Add a timer.delay procedure. Set it to one second}}]
                    }


@lesson/studteach[
     #:title "Steering the Boat"
     #:duration "30 minutes"
     #:overview ""
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list "A-SSE.1-2" "F-IF.1-3" "F-IF.4-6")
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:prerequisites (list "Defining Functions" "Defining Variables (Algebra)")
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{@points[@point{@student{You've seen many functions defined in Racket, for example: 
                                @code{(define (f x) (+ x 1))}
                        @activity[#:forevidence (list  "F-IF.1-3&1&2" "F-IF.1-3&1&4" "F-IF.4-6&1&1")]{@itemlist[@item{What is the name of this function?}
                                             @item{How many variables does it take?}
                                             @item{What is the name of the variable(s)?}
                                             @item{What does this function do to the variable @code{x}?}
                                             @item{Define a function @code{g}, which takes in a variable @code{q} and multiplies it by 20.}]}}
                        @teacher{Make sure students understand that the function is named @italic{f}, and not "fx" or "f of x". Have students practice other function definitions, to make sure they're comfortable translating a verbal description into Racket syntax.}
                        }
                 @point{@student{To translate these functions into algebra, we do something similar to what we did with the values. Here is the same function @code{f}, written in algebra syntax: @math{f(x) = x + 1}                                                                                                      @activity{Translate the function @code{g} into algebra, using the translation of @code{f} as a model. Once that is complete try defining a function @math{h}, which takes in a variable @code{x} and divides it by 2.}}
                         @teacher{Have students practice this translation with a few other functions, again translating from a verbal description (rather than Racket syntax).}}
                 @point{@student{@activity{Translate the rest of the functions, listed on @worksheet-link[#:name "Translating-to-Algebra"] of your workbook.}}
                         @teacher{}
                         }]
         }
                 
                 
@lesson/studteach[
     #:title "Closing"
     #:duration "5 minutes"
     #:overview ""
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list)
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[@point{@student{In this unit, you learned how to name values and define functions.  You will use named values to provide images for your game elements.  You will use functions to make your game elements move.  As you will see soon, functions are critical to making games.  You'll do a bit more practice with them in the next unit, including writing your first function that makes something move across the screen.}
                        @teacher{@itemlist[@item{Have students volunteer what they learned in this lesson}
                                            @item{Reward behaviors that you value: teamwork, note-taking, engagement, etc}
                                            @item{Pass out exit slips, dismiss, clean up.}]}
                        }
                        ]}
}

