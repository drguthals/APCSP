#lang APCSP/lib
@declare-tags[]

@title{Unit 3: Alice Boat Race Tutorial Part 1}

@unit-overview/auto[]{
 @unit-descr{By the time your students have finished this project they will have an understanding of Methods, lists, for each loops, user input, events, if-statements, while-loops, boolean expressions, printing directions to users, commenting, mathematical expressions. The end of the lesson provides an opportunity to use these topics freely to create an original ending to the race.
 }
}
@unit-lessons{
 @lesson/studteach[
 #:title "Introduction"
 #:duration "10 minutes"
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
  @points[@point{@student{In this activity you will be learning about many new programming techniques! Before we start let’s turn to @worksheet-link[#:name "Translating-to-Algebra"] in your notebook. 
              @activity["There is a table of topics we will be covering in the next two assignments. Fill out the table."
                        @bitmap{images/table of topics - introduction.png}]}
            @pedagogy{WTF}}                               
             ]
}

       
 @lesson/studteach[
 #:title "Watching a Movie"
 #:duration "10 minutes"
 #:overview "Students observe and recognize different objects (boat, starfish, timer) and write them down."
 #:learning-objectives @itemlist[@item{Students will be able to make observations regarding finished code}]
 #:evidence-statements  @itemlist[]
 #:product-outcomes @itemlist[]
 #:standards (list)
 #:materials @itemlist[]
 #:preparation @itemlist[@item{Have Alice3 installed and open}]
 #:prerequisites (list)
 #:pacings (list)
 ]{
  @points[@point{@student{This movie shows the finished version of the project you are about to begin. Let’s dissect the video and think about what’s going on in it.}}
          @point{@student{Let’s begin by writing down all of the objects we see in the beginning of the video. List all of them. Here’s a screenshot: @bitmap{images/1.png}}}
          @point{@student{@activity["Fill out this table with SIX objects you see."
                                     
                                    @bitmap{images/six objects - watching a movie.png}]}
             @teacher{The text blocks count as objects.}
            }
          @point{@student{Next, let’s think about the methods that we’re going to need to implement in order to match the functionality of the Alice program in the video.
              @activity["List four things you notice that change and a method you would need to make that thing change."
                        @bitmap{images/four things that are changing - watching a movie.png}]
             }
             @teacher{It's important for students to develop technique that allows them to visualize and plan ahead when coding. By knowing what objects they will be using and how those objects should behave, students can develop mental plans for how their code will be implemented.}
            }
          ]
 }
       
 @lesson/studteach[
 #:title "Debugging activity"
 #:duration "5 minutes"
 #:overview ""
 #:learning-objectives @itemlist[@item{Students learn to debug with provided bugs}]
 #:evidence-statements @itemlist[]
 #:product-outcomes @itemlist[@item{Students will develop debugging strategies}]
 #:standards (list)
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
 @point{@student{Before we begin let’s introduce the concept of debugging! As humans, we will make mistakes in our code and it is important to be able to find those mistakes. The instructions for this project will purposely include a handful of bugs so that you can develop some experience with debugging. Every time we encounter a bug we will turn to @worksheet-link[#:name "Translating-to-Algebra"] in our notebooks and brainstorm about what’s happening in our code.}
    @teacher{}
   }
 @point{@student{Here’s the table that we will fill out:
     @item{@bitmap{images/debugging table - debugging activity.png}}}
    }]
 }
     
 @lesson/studteach[
 #:title "Making an Obstacle Course"
 #:duration "20 minutes"
 #:overview "Students begin their code by creating an obstacle course to race through."
 #:learning-objectives @itemlist[@item{Students will learn how to make worlds in Alice}
                                 @item{Students become familiarized with using Alice3}]
 #:evidence-statements @itemlist[]
 #:product-outcomes @itemlist[@item{Students will create a course to race through}]
 #:standards (list)
 #:materials @itemlist[@item{Student @resource-link[#:path "workbook/StudentWorkbook.pdf" #:label "workbook"] folders with names on covers.}]
 #:preparation @itemlist[]
 #:prerequisites (list)
 #:pacings (list 
            @pacing[#:type "remediation"]{@itemlist[@item{}]}
            @pacing[#:type "misconception"]{@itemlist[@item{}]}
            @pacing[#:type "challenge"]{@itemlist[@item{}]}
            )
 ]{
  @points[@point{@student{ @activity["Let’s start by opening a " @bold{WATER TEMPLATE WORLD} " in Alice."]}}
          @point{@student{@activity["Now we need something to race in the water with. Let’s add a " @bold{WOODEN BOAT} " to your world."]}}
          @point{@student{@activity["Let’s " @bold{CHANGE THE CAMERA} " to be in second-person– zoom in until your boat is in the middle of the screen:"
                                    @item{@bitmap{images/2.png}}]}}
          @point{@student{@activity["To make it easier on ourselves when we move the camera to somewhere else, we’re going to " @bold{add a camera marker} " so that we can get back to this exact point of view whenever we want."
                                    @itemlist[@item{On the right side of your screen is the @bold{properties inspector}!}
                                              @item{Throughout the project we will be using this inspector to alter many of our object properties,}
                                              @item{but for now we’re just going to make a camera marker.}
                                              @item{Once you’ve positioned your boat just right, @bold{click the “add camera marker...” button}:}
                                              @item{@bitmap{images/3.png}}]]}}
          @point{@student{@activity["Next, we need some type of object to act as goals. (In my video I used pumpkins, but you can use anything you want! Be creative)"
                                    @itemlist[@item{@bold{Place them in a path in front of your boat.}}
                                              @item{This will serve as the course that your boat will drive through.}
                                              @item{Again, be creative. Your boat will drive through your course. Create it however you like.}
                                              @item{@bitmap{images/4.png}}]
                                    @itemlist[@item{You choose whatever object you want however ALL OF THE OBJECTS IN YOUR COURSE MUST BE THE SAME.}
                                              @item{We will be making a list with these objects later so they NEED to be of the same type}
                                              @item{NOTE: The boat will move slowly so it may be a good idea to place your objects close together}
                                              @item{After you’ve placed your objects @bold{click on the button to move the camera to our marker}}
                                              @item{@bitmap{images/5.png}}]]}}
          @point{@student{Congrats! You’ve set up a course for your boat to race through}}
          ]
 }
       
 @lesson/studteach[
 #:title "Let's Make a Timer"
 #:duration "25 minutes"
 #:overview "Students are get a taste of the Design Recipe, but primarily they're introduced to the syntax for function definition."
 #:learning-objectives @itemlist[@item{Students will be able to define very simple functions, given a simple word problem.}]
 #:evidence-statements @itemlist[]
 #:product-outcomes @itemlist[@item{Students will define at least two functions}]
 #:exercises (list)
 #:standards (list)
 #:materials @itemlist[@item{Student @resource-link[#:path "workbook/StudentWorkbook.pdf" #:label "workbook"] folders with names on covers.}]
 #:preparation @itemlist[]
 #:prerequisites (list "Making an Obstacle Course" )
 #:pacings (list 
            @pacing[#:type "remediation"]{@itemlist[@item{}]}
            @pacing[#:type "misconception"]{@itemlist[@item{}]}
            @pacing[#:type "challenge"]{@itemlist[@item{}]}
            )
 ]{
  @points[@point{@student{@activity{Let’s make the timer that you saw in the video. In our world editor, @bold{select a “new text model” from under shapes/text} @bitmap{images/6.png}}}}
          @point{@student{@activity{@bold{Name it “timer”} " and "@bold{set the value to “0”} @bitmap{images/7.png}}}}
          @point{@student{@activity{@bold{Place the timer on top of your boat} @bitmap{images/8.png}}}
             @teacher{Your students COULD drag and drop the 0 OR we could change its x and z coordinates to match that of the boat’s!}}
          @point{@student{@activity{Access the coordinates in the timer’s properties in the inspector and change them to match the boats (then @bold{change the y value to 0.45}) @bitmap{images/9.png}}}}
          @point{@student{@activity["Because the boat moves through the world as we race it, we’re going to want the timer to move with it!"
                                    @itemlist[@item{Under the timer’s properties, @bold{change the “Vehicle” variable to equal this.woodenBoat.}}
                                              @item{@bitmap{images/9.png}}]]}}
          @point{@student{@activity["Now we need to to write a method to make our timer work!"
                                    @itemlist[@item{Start by exiting scene setup and moving to the scene properties.}
                                              @item{@bold{Click on “Add a scene property...”} at the bottom of the window}
                                              @item{@bitmap{images/10.png}}]]}}
          @point{@student{@activity["We will be adding a variable to keep track of the time remaining in the timer."
                                    @itemlist[@item{Change the value type to @bold{“Whole number”}, name it @bold{timerValue}.}
                                              @item{Initialize it to a @bold{custom whole number “25”}}
                                              @item{@bitmap{images/12.png}}]]}}
          @point{@student{ }
             @teacher{Why did we make this a global variable instead of a local variable inside of the timer method?
              Because we will be using it in more than one place in our code!
              There is a very important difference between local and global variables
              Local variables: Declared inside a method. These are only accessible inside the method in which they are created. Their data is instantly destroyed once the method stops running.
              Global variables: Declared in the class. These are accessible by anything within the class (i.e. in methods within the class). 
            }}
          @point{@student{@activity["Now we’re going to create the actual method. This method will be in charge of decreasing the timer so let’s call it timerDecrease."
                                    @itemlist[@item{In our scene properties, @bold{add a new scene procedure}.}
                                              @item{@bitmap{images/13.png}}
                                              @item{@bitmap{images/14.png}}
                                              @item{We want this method to count down @bold{WHILE} there is still time left in the timer}
                                              @item{Select a @bold{while} loop and @bold{initialize it to true}}
                                              @item{If the timerValue is @bold{greater than 0}, there is still time left in the race,}
                                              @item{so that’s what our condition in the while loop will be.}
                                              @item{@bold{Click on true in the while loop}, select @bold{“Rational (Whole Number)”}, the @bold{greater than operator}, @bold{this.timerValue}, and then @bold{0} (See picture below)}
                                              @item{@bitmap{images/15.png}}]]}}
          @point{@student{@activity["The next thing we want is for the timer to count down. We can do this by having the timer value subtract 1 from its original value."
                                    @itemlist[@item{Under @bold{“this”} there is a @bold{“set timerValue”} method (See picture). We will be using this to alter the timerValue variable.}
                                              @item{Drag it into the while loop and @bold{select “this.timerValue”}}
                                              @item{@bitmap{images/16.png}}
                                              @item{If we click on the @bold{“this.timerValue”} a series of drop down menus will appear.}
                                              @item{Select @bold{“math”}, @bold{“this.timerValue - ???”}, and then @bold{1}}
                                              @item{@bitmap{images/17.png}}
                                              @item{Now we need to alter our timer object (the one in the boat) to match the value of our timerValue}
                                              @item{Let’s @bold{switch to the timer object so that we can access its procedures}}
                                              @item{@bitmap{images/18.png}}
                                              @item{Then, @bold{select the “setValue”} procedure and @bold{drag it into the while loop}.}
                                              @item{It will prompt you to set a value, @bold{do not enter anything so that we have an empty string}.}
                                              @item{@bitmap{images/19.png}}
                                              @item{Now we’re going to set the value equal to the timerValue.}
                                              @item{@bold{Click on the empty string in “setValue”} and a drop down menu will appear.}
                                              @item{Select @bold{“ “” + ???”}, @bold{“WholeNumber”}, and then @bold{“this.timerValue”}}
                                              @item{@bitmap{images/20.png}}
                                              @item{To get our timer to count down every second, we need to add a delay.}
                                              @item{@bold{Add a timer.delay procedure. Set it to one second.}}
                                              @item{@bitmap{images/21.png}}]]}}
          ]
 }


 @lesson/studteach[
 #:title "Steering the Boat"
 #:duration "15 minutes"
 #:overview ""
 #:learning-objectives @itemlist[]
 #:evidence-statements @itemlist[]
 #:product-outcomes @itemlist[@item{Students will create key-listeners}]
 #:standards (list)
 #:materials @itemlist[]
 #:preparation @itemlist[]
 #:prerequisites (list "Let's Make a Timer")
 #:pacings (list 
            @pacing[#:type "remediation"]{@itemlist[@item{}]}
            @pacing[#:type "misconception"]{@itemlist[@item{}]}
            @pacing[#:type "challenge"]{@itemlist[@item{}]}
            )
 ]{@points[@point{@student{@activity["In order to test our timer (and race our boat) we’re going to need a way to control it. We can use event handlers to connect input from the keyboard to move our boat."
                                     @itemlist[@item{In our @bold{“initializeEventListeners”} method, @bold{click “add event listener”}}
                                               @item{in the drop down menu, select @bold{“keyboard”}, @bold{“addObjectMoveFor”}, and then @bold{“this.woodenBoat”}}
                                               @item{@bitmap{images/22.png}}
                                               @item{@bold{NOTE:The forward and backwards controls will be inverted.}}]]}}
           @point{@student{Try running your code! What happens?}
              @teacher{Why doesn’t the camera follow the boat around? And more importantly, why isn’t our beautiful timer that we just made not counting down?}}
           @point{@student{@activity{BUG #1: fill out the table in your workbook, listed on @worksheet-link[#:name "Translating-to-Algebra"].}}}
           @point{@student{}
              @teacher{In setup scene, select the camera and @bold{change the vehicle to “this.woodenBoat”} @bitmap{images/23.png}}}
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
          @point{@student{@activity["Let’s start by adding another textModel, named “score” and initialized to 0." @bitmap{images/25.png}
                                    @itemlist[@item{Position your score into the upper left corner of the screen like such:}
                                              @item{@bitmap{images/26.png}}
                                              @item{We want our score to follow the boat just like our timer and camera do, so what should we do?}
                                              @item{@bold{Change the score’s vehicle to this.woodenboat}}]]}}
          @point{@student{@activity["Now we need to make a method that alters our score! This will be a little similar to our timerDecrease method."
                                    @itemlist[@item{Because we want our points to @bold{INCREASE}, let’s go ahead and @bold{make a new method called “scoreIncrease”}}
                                              @item{We only want our score to increase WHILE there is still time on the clock, @bold{use a while loop}.}
                                              @item{Drag a while loop into your scoreIncrease method and initialize it to @bold{true}}
                                              @item{Change the while loop condition to only execute @bold{while timerValue is greater than or equal to zero}.}
                                              @item{@bitmap{images/27.png}}]]}}
          @point{@student{@activity["We want our method to increase everytime we pass through one of our objects, so we’re going to need to make them into a list."
                                    @itemlist[@item{Start by dragging a @bold{“for each in” into our while loop}}
                                              @item{Under @bold{“item type”} select @bold{“Gallery Class”}}
                                              @item{@bitmap{images/28.png}}
                                              @item{Then, in our gallery class, select the object you used for your course.}
                                              @item{@bitmap{images/29.png}}
                                              @item{Back in our for each prompt, select @bold{“array”} and choose @bold{“custom array”}}
                                              @item{@bitmap{images/30.png}}
                                              @item{Start adding your objects to the array}
                                              @item{@bitmap{images/31.png}}
                                              @item{@bitmap{images/32.png}}
                                              @item{When you’ve added all your objects select @bold{“ok”}}]]}}
          @point{@student{@activity["Now we want our score to increase every time we pass through one of our objects."
                                    @itemlist[@item{@bold{Add an if statement to our for each loop and initialize it to true.}}
                                              @item{Next, change the condition of the if statement to be @bold{less than}.}
                                              @item{@bold{NOTE: For now you can choose any two random numbers, we’ll be changing them later.}}
                                              @item{In our @bold{this.woodenBoat} functions, there is a function to get the distance from the boat to another object}
                                              @item{Let’s @bold{drag that into our if statement condition} and then @bold{select the array we just made}.}
                                              @item{@bitmap{images/33.png}}
                                              @item{Then change the @bold{distance to be less than 1}}
                                              @item{@bitmap{images/image36.png}}]]}}
          @point{@student{@activity["Similarly to our timer, we need a global variable that keeps track of our score."
                                    @itemlist[@item{Just like you made timerValue, @bold{make a new variable that is a WholeNumber}, named @bold{“scoreValue”}, and initialize it to @bold{0}}
                                              @item{@bitmap{images/34.png}}
                                              @item{Back in our if statement in our @bold{scoreIncrease method}, we’re going to add a @bold{“setScoreValue”} procedure and set it to @bold{“this.scoreValue”} when prompted.}
                                              @item{@bitmap{images/35.png}}
                                              @item{Next, click on @bold{“this.scoreValue”}.}
                                              @item{In the drop down menus, we’re going @bold{increment the value by one}. (similar to how we decremented our timer by one)}
                                              @item{@bitmap{images/36.png}}]]}}
          @point{@student{@activity["Now, just like with the timer, we’re going to change the score object’s value to match scoreValue’s value."
                                    @itemlist[@item{Under @bold{this.score’s procedures}, drag the @bold{setvalue} procedure into our @bold{if statement}}
                                              @item{Set it equal to a @bold{blank string}. Then, @bold{add scoreValue}.}
                                              @item{@bitmap{images/37.png}}
                                              @item{Remember when we tried to run our code after finishing the timerDecrease method?}
                                              @item{It didn’t work because we didn’t add it to our event listener.}
                                              @item{@bold{Go ahead and add it to our sceneActivationListener}.}
                                              @item{@bitmap{images/38.png}}]]}}
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

