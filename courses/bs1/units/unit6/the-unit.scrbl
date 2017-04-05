#lang APCSP/lib
@declare-tags[]

@title{Unit 6: Bunnies and Events}

@unit-overview/auto[]{
@unit-descr{Students discover Events and Handlers, and use them to make a game where they can control bunnies.}
}

@unit-lessons{
@lesson/studteach[
     #:title "Introduction"
     #:duration "15 minutes"
     #:overview ""
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list)
     #:materials @itemlist[@item{Pens/pencils for the students, fresh whiteboard markers for teachers}
                            @item{Class poster (List of rules, language table, course calendar)}
                            @item{Language Table (see below)}]
     #:preparation @itemlist[@item{Student has knowledge of objects, and some experience with Alice 3}]
     #:pacings (list 
                @pacing[]
                @pacing[]
                @pacing[]
                )
      ]{
        @points[@point{@student{In this lesson you’re going to build a simple game where you control a bunny and make it eat birthday cakes! You’ll learn how to make Alice recognize user input, such as keyboard input, to make an object move around, but all make a multiple Event Handlers to have the surrounding of the Bunny interact with it. First, watch the @(hyperlink "https://drive.google.com/open?id=0B8WPCstkZObFNlNlZVBjY2s1LWs" "video") of what our bunny game looks like when you run it, then do a few exercises to analyze what’s going on in this program. If you haven’t already, watch the video that goes with this lesson, and do the following exercises. }
                       @teacher{For possible extra credit, have the student make their own small game implementing if statements and Event Handlers.}
		       }
		@point{@student{
			@activity[]{
			@bitmap{images/intro-1.png}
			Fill out the table below according to the what you think is going on in the video:
			@bitmap{images/intro-2.png}
			}
			}
			@teacher{}}
		@point{@student{Now, download the @(hyperlink "https://drive.google.com/open?id=0B8WPCstkZObFalEwYzhTWEI0cE0" "starter code"), and open it in Alice 3. You should see the following:}
		@teacher{}}
		@point{@student{@bitmap{images/intro-3.png}
		If you click on “Setup Scene”, you’ll see that we have a bunny, and about 8 cakes. We’re first going to make our bunny move around, and then from there, make the bunny eat the cakes, using Event handlers and listeners.}}
		       
		       ]}

@lesson/studteach[
     #:title "Task 1: Make the Bunny Move"
     #:duration "30 minutes"
     #:overview "Students are introduced to a new concept, Event handlers."
     #:learning-objectives @itemlist[@item{}]
     #:evidence-statements @itemlist[@item{}
                                     
                                    ]
     #:product-outcomes @itemlist[
				 @item{Students learn about Event handlers, and how to apply them to modifying objects in Alice 3, in order to make a simple game.}
				 ]
     #:exercises (list)
     #:standards (list)
     #:materials @itemlist[@item{Computer running Alice 3}]
     #:preparation @itemlist[@item{Students are logged into WeScheme.org, OR have opened DrRacket.}]
     #:prerequisites (list "Intro to Programming" "Contracts")
     #:pacings (list 
                @pacing[]
                @pacing[]
                @pacing[]
                )
      ]{
        @points[@point{@student{@activity[]{
                              @itemlist[@item{In order to make our bunny move based on user input, we have to use what is called an EventListener. In order to make one, click on the "InitializEventListeners" tab right next to the myFirstMethod tab}
			      	 	@item{You should see this in the body of the tab:
					@bitmap{images/task1-1.png}}
					@item{In order to make our Bunny move, we need to add an event listener, by clicking on the "Add Event Listener" button first, then you should see:}
					@item{bitmap{images/task1-2.png}}
					@item{When you hover over “keyboard”. Go ahead and click on “addKeyPressListener”.}
					@item{@bitmap{images/task1-3.png}}
					
					 ]}}
                        @teacher{}
                        }
		@point{@student{The way Listeners work is they are constantly checking, or “listening” for user input, in this case, Alice will always be listening for when a key is pressed. Every time a key is pressed, an “event” is thrown, where the event is either isLetter, isDigit, getKey, or isKey. Knowing this, we can use if statements to make our bunny do things whenever a specific key is pressed. We want to use if statements to make our bunny move, and specifically, move according the specific key pressed (w for forward, d for turn right, s for backwards, a for turn left). In order to implement this, we need to have nested if-else statements. @activity[]{@itemlist[
				        @item{Write the pseudocode for the first if statement, say, to make the bunny move forward when “w” is pressed:
					________________________________________________________________

					________________________________________________________________}
					]}
					Basicly, our if statement should look something like:
					} @teacher{Feel free to review the concept of pseudocode before going over this activity}}
		@point{@student{@code{if(keyPressed == w){
		                      bunny.forward
                          }}}}
		@point{@student{Here's what it should look like in Alice:
				       @bitmap{images/task1-4.png}}}
		@point{@student{The first part of the if statement pretty much matches our pseudocode, and the second part is only a little different, because the bunny is turning. Let’s dissect the first line:
				    @bitmap{images/task1-5.png}
				    }}
		@point{@student{So, remember the events? Every time a key is pressed, an event is generated for that key pressed, which can tell Alice the kind of key pressed. This one, checks that event to see if the key pressed is a W. Now, the body of the if statement:
@bitmap{images/task1-6.png}}}
		@point{@student{This line should look really familiar, it just makes our bunny move forward. Notice the quantity of how far and how fast the bunny moves, 0.5 in 0.001. Why that fast? Because an event is generated as soon as a key is pressed, and it keeps listening for events like another key (or even the same key) being pressed (or held down). This will show the bunny moving smoothly whenever W is pressed and held down. This same exact idea is applied to making our bunny turn right whenever a D is pressed, except it’s implemented in the else body now, replicating the first part:
@bitmap{images/task1-7.png}}}
		@point{@student{@activity[]{
			@itemlist[@item{Play around with values for the duration and amount, then run Alice to see how this affects the way our bunny moves, fill out the tables below based on your decided values, one for forward, and one for turn right:}
				  @item{@bitmap{images/task1-8.png}}
				  @item{@bitmap{images/task1-9.png}}]}}}
		@point{@student{See how those change the way the event is interpreted and causes the bunny to move?
Next, we need to make our bunny be able to turn left when the user presses A, and move backwards using S. Try to do this yourself, you should do this the exact same way we added the cases for the bunny to move forward and turn right. When finished, the entire Listener/handler should look like this:
@bitmap{images/task1-10.png}}
			@teacher{Extra Credit opportunity: change it so that the user must use the up/down/left/right arrow keys to move the bunny.}}
		@point{@student{You’re probably wondering why we use nested if-else statements in order to check what key was pressed. Actually, we don’t need to nest each check within an else statement, it’s just much more efficient. Recall how an if-else works, first, it checks if what’s in the parentheses is true, if so, it executes the body immediately afterwards, if it’s false, however, the else body will be executed, like the following:}}
		@point{@student{@code{if(thing to test){
				   ***Executes if<thing to test> was true***
				      }else{
				        ****Executes if <thing to test> was false****
					}
					}}}
		@point{@student{The reason this works better than having multiple if statements is because we don’t need to check if the key pressed was another letter if the key is already matched. In other words, if the key pressed was a W, and Alice finds this to be true and moves the bunny forward, we don’t need Alice to check if the key pressed was A, S, or D, since the key has already been matched, and the bunny already moved. In computer science, we having something called else if statements, which are not available in Alice, but have almost the same effect as nested if-else statements. 

The next thing we want to make our Bunny do is be able eat the cakes. Can you think of what we might need in order to make Alice continuously check-or “listen”- for when the bunny gets close enough to a cake, and then make the cake smaller? Once again, we need to use an Event Handler, or as Alice calls them, Event Listener.}}
                 ]}
                 
@lesson/studteach[
     #:title "Task 2: Make the Bunny eat"
     #:duration "1 hour"
     #:overview "Students use collision listeners to make the Bunny look as though it's eating the cakes"
     #:learning-objectives @itemlist[@item{Students work more with Listeners and Events in Alice 3}
                                    ]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[@item{Student becomes familiar with using different
     types of Listeners in Alice 3}]
     #:standards (list)
     #:materials @itemlist[]
     #:preparation @itemlist[@item{}]
     #:prerequisites (list)
     #:pacings (list )
      ]{
        @points[@point{@student{Now that we've made our Bunny be able to move based on the User's control, let's make it so our Bunny ca eat the cakes in the field}}
                @point{@student{@activity[]{
                            @itemlist[@item{Add another Event Listener, just like you added the keyPressedListener, except this time, instead of selecting keyboard, hover over “Position / Orientation”, and hover over 
                                addCollisionStartListener. This should open a new tab, so it should look like:}
                                @item{@bitmap{images/task2-1.png}}
                                          @item{Click on "Custom Array…" in the very last tab, under the faded “setB:”. In the next window: 
                                          @bitmap{images/task2-2.png}}
                                          @item{Go ahead and click on the "add" button, and select "this.bunny". The window should now look like this:}
                                          @item{@bitmap{images/task2-3.png}}
                                          @item{If it does, go ahead and click “ok”. This will tell Alice to put the object bunny in an array that will be accessed by the EventListener, called “set A”. We’ll go into more detail on why Alice needs these arrays for the Collision Listener. Alice should ask you to do the same thing again, except this time, add the nearest cake (cake2) to the array which Alice calls “set B” in the CollisionListener.}]}}}

                @point{@student{What the CollisionListener does is it constantly checks for whether or not an object in the array set A collided (or get into very close proximity of) an object in setB. When the collision does occur, The Listener executes the code in the body of the Listener method.}}
                @point{@student{@activity[]{itemlist[
                                          @item{Now, after initializing the Listener, you should see the following: 
                                          @bitmap{images/task2-4.png}}
                                          @item{In order to make the cake appear as if it’s being eaten, we resize the cake to make it very small. Since the object we’re check to see if the bunny has collided with is cake2, we can directly modify cake2 in this Listener. Drag} 
                                          @item{@bitmap{images/task2-5.png}}
                                          @item{ into the body of the listener. This will make cake2 become so small the user can’t even notice it exists! We also want to keep track of how many cakes the bunny has eaten as the user moves the bunny around. In order to do this, select the bunny object in the drop down menu of objects, and drag}
                                          @item{@bitmap{images/task2-6.png}}
                                          @item{ into the listener, so that the cakesEaten variable will be modified right before the cake resizes. If we want to increment cakesEaten each time a cake is eaten, or “collided” with, do you know what we should set as the argument of the setCakesEaten procedure?}]}}}
                @point{@student{It should be cakesEaten + 1, so your entire listener should now look like this:
                                @bitmap{images/task2-7.png}}}
                @point{@student{Congrats, you’ve created your first CollisionStarted Listener! Now just do it again-for the rest of the cakes, making a Listener for each one. When finished, your Listener should look like this: 
                @bitmap{images/task2-8.png}}}
        
        ]}

                 

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
        @points[
           @point{@student{You've learned how to use Booleans to constrain where elements can move in a game.  In the next unit, we'll discuss how to use Booleans to move game elements based on which keys users press while playing your game.}
                  @teacher{}}]}
}
