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
                 @point{@student{Let’s begin by writing down all of the objects we see in the beginning of the video. List all of them. Here’s a screenshot: @bitmap{images/1.png}
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
                 @point{@student{Let’s CHANGE THE CAMERA to be in second-person– zoom in until your boat is in the middle of the screen: @bitmap{images/2.png}}}
                 @point{@student{To make it easier on ourselves when we move the camera to somewhere else, we’re going to add a camera marker so that we can get back to this exact point of view whenever we want.}}
                 @point{@student{On the right side of your screen is the properties inspector! Throughout the project we will be using this inspector to alter many of our object properties, but for now we’re just going to make a camera marker.}}
                 @point{@student{Once you’ve positioned your boat just right, click the “add camera marker...” button:@bitmap{images/3.png}}}
                 @point{@student{Next, we need some type of object to act as goals. (In my video I used pumpkins, but you can use anything you want! Be creative)}}
                 @point{@student{Place them in a path in front of your boat. This will serve as the course that your boat will drive through.}}
                 @point{@student{Again, be creative. Your boat will drive through your course. Create it however you like.@bitmap{images/4.png}}
                  @teacher{Your students can choose whatever object you want however ALL OF THE OBJECTS IN YOUR COURSE MUST BE THE SAME. We will be making a list with these objects later so they NEED to be of the same type}}
                 @point{@student{NOTE: The boat will move slowly so it may be a good idea to place your objects close together}}
                 @point{@student{After you’ve placed your objects click on the button to move the camera to our marker @bitmap{images/5.png}}
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
                   @points[@point{@student{Let’s make the timer that you saw in the video. In our world editor, select a “new text model” from under shapes/text @bitmap{images/6.png}}}
                            @point{@student{Name it “timer” and set the value to “0” @bitmap{images/7.png}}}
                            @point{@student{Place the timer on top of your boat @bitmap{images/8.png}}
                             @teacher{Your students COULD drag and drop the 0 OR we could change its x and z coordinates to match that of the boat’s!}}
                            @point{@student{Access the coordinates in the timer’s properties in the inspector and change them to match the boats (then change the y value to 0.45) @bitmap{images/9.png}}}
                            @point{@student{Because the boat moves through the world as we race it, we’re going to want the timer to move with it!}}
                           @point{@student{Under the timer’s properties, change the “Vehicle” variable to equal this.woodenBoat. @bitmap{images/9.png}}}
                            @point{@student{Now we need to to write a method to make our timer work! Start by exiting scene setup and moving to the scene properties. Click on “Add a scene property...” at the bottom of the window @bitmap{images/10.png}}}
                            @point{@student{We will be adding a variable to keep track of the time remaining in the timer.}}
                           @point{@student{Change the value type to “Whole number”, name it timerValue, and initialize it to a custom whole number “25” @bitmap{images/12.png}}
                             @teacher{Why did we make this a global variable instead of a local variable inside of the timer method?
Because we will be using it in more than one place in our code!
There is a very important difference between local and global variables
Local variables: Declared inside a method. These are only accessible inside the method in which they are created. Their data is instantly destroyed once the method stops running.
Global variables: Declared in the class. These are accessible by anything within the class (i.e. in methods within the class). 
}}
                            @point{@student{Now we’re going to create the actual method. This method will be in charge of decreasing the timer so let’s call it timerDecrease. In our scene properties, add a new scene procedure. @bitmap{images/13.png}  @bitmap{images/14.png}}}
                            @point{@student{We want this method to count down WHILE there is still time left in the timer, so select a while loop and initialize it to true}
                             @teacher{If the timerValue is greater than 0, there is still time left in the race, so that’s what our condition in the while loop will be.}}
                            @point{@student{Click on true in the while loop, select “Rational (Whole Number)”, the greater than operator, this.timerValue, and then 0 (See picture below) @bitmap{images/15.png}}}
                            @point{@student{The next thing we want is for the timer to count down. We can do this by having the timer value subtract 1 from its original value.}}
                             @point{@student{Under “this” there is a “set timerValue” method (See picture). We will be using this to alter the timerValue variable.}
                                    @teacher{}
                                    }
                             @point{@student{Drag it into the while loop and select “this.timerValue” @bitmap{images/16.png}}}
                           @point{@student{If we click on the “this.timerValue” a series of drop down menus will appear.}}
                           @point{@student{Select “math”, “this.timerValue - ???”, and then 1 @bitmap{images/17.png}}}
                           @point{@student{Now we need to alter our timer object (the one in the boat) to match the value of our timerValue}}
                           @point{@student{Let’s switch to the timer object so that we can access its procedures @bitmap{images/18.png}}}
                           @point{@student{Then, select the “setValue” procedure and drag it into the while loop. It will prompt you to set a value, do not enter anything so that we have an empty string. @bitmap{images/19.png}}}
                           @point{@student{Now we’re going to set the value equal to the timerValue.}}
                           @point{@student{Click on the empty string in “setValue” and a drop down menu will appear.}}
                           @point{@student{Select “ “” + ???”, “WholeNumber”, and then “this.timerValue” @bitmap{images/20.png}}}
                           @point{@student{To get our timer to count down every second, we need to add a delay. Add a timer.delay procedure. Set it to one second @bitmap{images/21.png}}}]
                    }


@lesson/studteach[
     #:title "Steering the Boat"
     #:duration "15 minutes"
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
      ]{@points[@point{@student{In order to test our timer (and race our boat) we’re going to need a way to control it. We can use event handlers to connect input from the keyboard to move our boat.}}
                 @point{@student{In our “initializeEventListeners” method, click “add event listener”, in the drop down menu, select “keyboard”, “addObjectMoveFor”, and then “this.woodenBoat” @bitmap{images/22.png}}
                  @teacher{The forward and backwards controls will be inverted.}}
                 @point{@student{Try running your code! What happens?}
                         @teacher{Why doesn’t the camera follow the boat around? And more importantly, why isn’t our beautiful timer that we just made not counting down?}}
                   @point{@student{@activity{BUG #1: fill out the table in your workbook, listed on @worksheet-link[#:name "Translating-to-Algebra"].}}}
                   @point{@student{}
                   @teacher{In setup scene, select the camera and change the vehicle to “this.woodenBoat” @bitmap{images/23.png}}}
                   @point{@student{If you try running the scene, the camera follows the boat around, but the timer still isn’t changing.. Why is this?}
                           @student{@activity{Let's go back to our bug table, listed on @worksheet-link[#:name "Translating-to-Algebra"].}}
                           @teacher{It's because we never call on the timerDecrease method}}
                   @point{@student{Let’s check our event listener method and look for a problem there.}
                           @teacher{Have your students switch from this.timer to this so that we can access our methods, and add our timerDecrease method to the sceneActivationListener @bitmap{images/24.png}}}
                   
                   ]
         }
                 
                 
@lesson/studteach[
     #:title "Making a Score"
     #:duration "40 minutes "
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
        @points[@point{@student{In this part of our project, we’re going to create a way to keep track of all of the objects our boat moves through.}}
                 @point{@student{Let’s start by adding another textModel, named “score” and initialized to 0. @bitmap{images/25.png}}}
                 @point{@student{Position your score into the upper left corner of the screen like such: @bitmap{images/26.png}}}
                 @point{@student{We want our score to follow the boat just like our timer and camera do, so what should we do?}
                         @teacher{Change the score’s vehicle to this.woodenboat}}
                @point{@student{Now we need to make a method that alters our score! This will be a little similar to our timerDecrease method. Because we want our points to INCREASE, let’s go ahead and make a new method called “scoreIncrease”}}
                @point{@student{We only want our score to increase WHILE there is still time on the clock, so let’s go ahead and use a while loop.}}
                @point{@student{Drag a while loop into your scoreIncrease method and initialize it to true}}
                @point{@student{Change the while loop condition to only execute while timerValue is greater than or equal to zero.@bitmap{images/27.png}}}
                @point{@student{We want our method to increase everytime we pass through one of our objects, so we’re going to need to make them into a list.}}
                @point{@student{Start by dragging a “for each in” into our while loop}}
                @point{@student{Under “item type” select “Gallery Class” @bitmap{images/28.png}}}
                @point{@student{Then, in our gallery class, select the object you used for your course. @bitmap{images/29.png}}}
                @point{@student{Back in our for each prompt, select “array” and choose “custom array” @bitmap{images/30.png}}}
                @point{@student{Start adding your objects to the array @bitmap{images/31.png} @bitmap{images/32.png}}}
                @point{@student{When you’ve added all your objects select “ok”}}
                @point{@student{Now we want our score to increase every time we pass through one of our objects. }}
                @point{@student{Add an if statement to our for each loop and initialize it to true.}}
                @point{@student{Next, change the condition of the if statement to be less than (For now you can choose any two random numbers, we’ll be changing them later.)}}
                @point{@student{In our this.woodenBoat functions, there is a function to get the distance from the boat to another object, let’s drag that into our if statement condition and then select the array we just made. @bitmap{images/33.png}}}
                @point{@student{Then change the distance to be less than 1 @bitmap{images/image36.png}}}
                @point{@student{Similarly to our timer, we need a global variable that keeps track of our score. Just like you made timerValue, make a new variable that is a WholeNumber, named “scoreValue”, and initialize it to 0 @bitmap{images/34.png}}}
                @point{@student{Back in our if statement in our scoreIncrease method, we’re going to add a “setScoreValue” procedure and set it to “this.scoreValue” when prompted. @bitmap{images/35.png}}}
                @point{@student{Next, click on “this.scoreValue”. In the drop down menus, we’re going increment the value by one. (similar to how we decremented our timer by one) @bitmap{images/36.png}}}
                @point{@student{Now, just like with the timer, we’re going to change the score object’s value to match scoreValue’s value.}}
                @point{@student{Under this.score’s procedures, drag the setvalue procedure into our if statement and set it equal to a blank string. Then, add scoreValue. @bitmap{images/37.png}}}
                @point{@student{Remember when we tried to run our code after finishing the timerDecrease method? It didn’t work because we didn’t add it to our event listener. Go ahead and add it to our sceneActivationListener. @bitmap{images/38.png}}}
                @point{@student{Try running your code and steering the boat up to an object.}}
                @point{@student{@activity{BUG #3 Uh oh! Our score isn’t increasing! Let’s take a moment to debug our code, go to the debuggin table listed on @worksheet-link[#:name "Translating-to-Algebra"].}}}
                @point{@student{What do you think could be wrong? I’ll give you a hint, it’s something in our event listeners.. But what?}
                       @teacher{Take a moment to discuss the functionality of our code. What should all be happening at the same time?}}
                @point{@student{} @teacher{Our timer and score should be changing TOGETHER at the same time, but our event listener is using a do in order loop. Change it to a do together loop. @bitmap{images/39.png}}}
                @point{@student{Try running your code again and driving up to an object. WOAH! What’s up with our score!}}
                @point{@student{@activity{Uh oh! Another bug! Go to @worksheet-link[#:name "Translating-to-Algebra"] in your workbook.}}}
                @point{@student{Our score should be incrementing by one when we drive through an object, what could be wrong? Hint: it’s a problem with our scoreIncrease method. Let’s look in there.}}
                @point{@student{} @teacher{The problem is that since we’re using a while loop, as long as we’re within our set distance from an object the score will continue to increase immediately. What can we do to delay the time it takes to increment the score?}}
                @point{@student{} @teacher{Add a delay procedure for 1.5 seconds to our if statement. @bitmap{images/40.png}}}
                @point{@student{You’re done with the score!}}
                ]}
}

