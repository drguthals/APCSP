#lang APCSP/lib

@declare-tags[]

@title{Building a Video Game (with mouse input) in Alice}
@unit-overview/auto[#:lang-table (list "Number" @code{+ - * / sqr sqrt expt})]{
@unit-descr{Students will learn to handle user input in the form of mouse clicks and experience building a simple video game.}
}
@unit-lessons{
@lesson/studteach[
     #:title "Introduction"
     #:duration "5 minutes"
     #:overview "Transition students from making movies to video games and explain the difference in the type of program they will write"
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list)
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:prerequisites (list)
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[@point{@student{Now that you know how to make movies in Alice and are comfortable with methods and lists, we'll add another layer of complexity: user input. User input is what transforms a movie into a video game. In other words, instead of just watching what your program does, someone will actually get to interact with your program while it's running. In this lesson, we'll add user input in the form of mouse clicks. However, user input can also be formatted as key presses, or even a string entered when prompted. Your task is to create a simple fishing game, in which a bear cub catches salmon in a river. The player will click on the salmon to make the bear catch and eat it. In this game, the user is not presented with any choices to make that would change the game they are playing, but it is a good introduction nevertheless to how to account for user input in your programs.}
                        @teacher{The description given may not seem to match the definition of video game students have in their head. Remind them that the movies they made in the last unit did not precisely match what we generally think of a movie, e.g. something we'd go watch in the theater. The definition of video game we use here simply refers to a program that takes user input.}
                        }
                 ]
         }
@lesson/studteach[
     #:title "Build the World"
     #:duration "10 minutes"
     #:overview "Students download the starter world and add animals to it."
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:exercises (list)
     #:standards (list)
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:prerequisites (list)
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[          
            @point{@student{Download the starter world from @bold{here}. You will find a river and trees, but no bear cub, salmon, or any other woodland animals. The river contains the locations for which the salmon should move each time. These can be found and referred to in the list "locations" found at the bottom of the "Scene" tab. You should add in the bear cub, salmon, and any other woodland creatures or scenery you find aesthetically pleasing. For reference, see the initial setup of the sample game @bold{here}.}                            
                    @teacher{The students will receive a starter world, but it will not be as complete as starter worlds in the past. The full sample starter world can be found @bold{here} for your reference. Students should already know how to add objects into a world, but if they have trouble, a video explaining how to insert objects can be found @bold{here}.}
                    }
             @point{@student{Take a moment to familiarize yourself with the locations list. Hint: it may be useful to go into "setup scene" mode and figure out where each disk is located. Note that each disk is "invisible", i.e. its opacity is set to 0. This is a useful trick in Alice when you want to send an object to a certain location, but don't want anyone to see that there is another object already there. This is how we will move the salmon around in the game.}
                     @teacher{It is likely that students will be confused by the locations list. It is not necessary for this project that students understand exactly how it works as long as they know that they can move the salmon around by indexing into the locations list. If a student is particularly curious, however, a video explaining the functionality of invisible objects in Alice can be found @bold{here}.}
                     }                        ]}
@lesson/studteach[
     #:title "Implementing Event Listeners"
     #:duration "10 minutes"
     #:overview "Students will a mouseClickOnObject event listener to their program."
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:exercises (list)
     #:standards (list)
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:prerequisites (list)
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[@point{@student{To keep track of user input, such as mouse clicks, we are going to use something called an event listener. This is sort of like a method, but instead of calling it ourselves at a certain, predetermined point in our program, an event listener will be called whenever the event it is listening for happens. For example if we have a mouse click listener with the line of code @italic{this.bearCub say "Grrrr"}, then whenever the user clicks their mouse, the mouse click listener will be called and your bear cub should say "Grrr".}
                        @teacher{This section should not be too difficult for students to complete as they are following step-by-step instructions. They do not need to understand why the listener works or how it gets called; they just need to know how to use it. If a student has extreme difficulty with this section, refer them to a proficient student to see how it's done.}
                        }
                 @point{@student{Let's go ahead and try this out. To add a mouse click listner to your program, go to the "initalizeEventListeners" tab next to the "Scene" tab. You will see the addSceneActivationListener already there with a call to myFirstMethod. Every Alice program has this as its default. The code you write in myFirstMethod gets called this way when you click "Run". Below that, click "Add Event Listener", select "Mouse", and then "addMouseClickOnObjectListener". Ta-da! Now you have your mouse click listener. This will be called whenever you click on an object in your scene.}
                         @teacher{}
                         }
                 @point{@student{Now add a line of code to this listener to see how it works. For testing purposes, you may use the @italic{this.bearCub say "Grrrr"} line from above or come up with your own line of code that will execute whenever an object is clicked on. Once you have inserted a line of code, run your program and click around to see what happens. Notice that your line of code executes every time you click on an object in your scene, but should not execute if you click somewhere without an object. Now that you have your event listener up and working, we can start adding code to it that will allow a simple fishing game to be played.}
                         @teacher{}
                         }             ]}
       
@lesson/studteach[
     #:title "Designing Methods"
     #:duration "25 minutes"
     #:overview "Students will create methods they'll need to implement the game and call those methods from the event listener without adding code to the methods."
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
        @points[@point{@student{As there are a few distinct parts to this game, it may be useful to first decide what methods we will want to have and when we will want to call them before we start dragging code blocks around. In previous projects, we have started with all our code in myFirstMethod and then added methods later, effectively cleaning up the code in myFirstMethod. Technically, we could do a similar thing here, with putting all the code in the event listener and then making methods, but you might find it simpler to make the methods first and then add code directly into the methods. The process for doing this will be similar to writing pseudocode, a topic we explored back when we made movies. Turn to page 67 in your workbook and complete the activities there to come up with what methods you will need.	@itemlist[@item{Q1. List three ideas for methods you might incorporate into your program. Think about how the game starts, how it ends, and what segmentations you could make in the middle. Decide whether each method will need parameters and be sure to name them appropriately. With good method names, someone should be able to look at your code in the event handler and have a good idea of what's supposed to happen even if they do not know exactly how it will happen. This concept is called @italic{encapsulation} in computer science.}
		@item{Q2. Talk to your neighbor(s) to find three more methods students have come up with, and list them below. When talking to your neighbor, ask them how they came up with their methods, and if you have any similar methods listed, put a star next to them below.}
		@item{Q3. Once you gathered some possible methods to use in your program, fill in the event listener method below with calls to each method in the appropriate order. Note: you may use if statements, loops, and variables at your discretion, but keep in mind that simple is better.}]}
                        @teacher{The first question should be done individually by each student. It is important for students to try to work something through by themselves first before turning to other students for input. Wait until each student has something written down for Q1 before moving on. For Q2 you can either have the students talk in pairs, or encourage them to get up and walk around the class, talking to multiple other students. Monitor these discussions to ensure that the students are not simply copying down the method names, but are actively engaging in conversation about how they came up with their methods and why they would be helfpul. After 5 or 10 minutes of discussion, call the students back and have them work on Q3.}
                        }
                                       ]}
	
@lesson/studteach[
     #:title "Creating Methods"
     #:duration "15 minutes"
     #:overview "Students will create methods they came up with in the previous section, effectively implementing what they wrote down in their workbooks."
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
        @points[@point{@student{Now that you have decided what methods to use, go ahead and add them to your scene in Alice. You should already know how to do this from the last unit, but if you need a refresher, a video tutorial can be found @bold{here}. After you add your methods, call them from your event handler and run your program. Then turn to page 89 in your workbook and answer the following questions independently. 
		@itemlist[@item{Q1. What happened when you ran your program?}
			@item{Q2. Is that what you expected? Explain why or why not.}
			@item{Q3. What change must be made to make the program run correctly?}]}
                        @teacher{The goal for this section is for students to create the methods they just outlined in the "Designing Methods" section. They should not add any code to the methods. All they have to do is create them and then call them from the event handler. When adding to the event handler, they should copy from the last workbook question on page 67.}
                        }
	@point{@student{You should have noticed, and hopefully expected, that even though you created methods and called them in the event handler, still nothing happens when you click on objects. This is because there is no code in the methods you just created! Adding code can seem daunting so let's break it up into pieces and just focus on one method at a time. Ideally, you should have identified that you will need some sort of "start" method, an "end" method, and a method or two in the middle of your program. We broke it down into "catchFish" and "reset", but if you have another idea you're really passionate about then by all means go for it! The start and end methods will be the easiest because they don't rely on user input and happen at a specified point each time, so let's start with those.}
		@teacher{}
	}
                                       ]}
@lesson/studteach[
     #:title "Video Game Tips"
     #:duration "30 minutes"
     #:overview "Students will learn what some of the key parts of videogames are."
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
        @points[@point{@student{There are some common traits most, if not all, successful videogames share. Perhaps the most important are the instructions. When you start playing a new videogame, you need to know @italic{how} you are supposed to play it. If you're on a computer, do you use the cursor and mouse or press certain keys? What is your objective? As our game is relatively simple, the instructions for it will also be simple. In fact, you don't even need a new method for this, you can just put code directly in myFirstMethod, which gets called when the player starts the program, giving them directions right at the start. The objective of this game is for the bear to catch salmon and eat them. Keeping in mind that we have a mouseClickOnObject event listener, what instructions do you think you should give the user that will enable them to play the game? Turn to your partner and discuss. After you've come up with what instructions you will need, add them into myFirstMethod. Hint: you can have one of the animals in your world say the instructions.}
                        @teacher{This part is meant to be relatively simple. If a student is having trouble, it is likely because they are overthinking it. As students are working in pairs, it is expected that their instructions will be similar, if not identical. The idea here if for an animal in the worl to say something along the lines of "Click on the salmon to feed the bear." In the reference solution, one of the squirrels says, "Help the bear catch the salmon by clicking on the salmon."}
                        }
	@point{@student{Another important part is the ending. You need to communicate to the player that they have finished the game. There are many different ways to do this, so get creative! First, you need to decide when the game will be over. For this project, it may be easiest to end the game after the bear eats a certain number of fish and becomes "full". Think about how you would check for that to be true, i.e. how you will call the "end" method. Then add code to the "end" method that communicates to the user that the game is over. You may find it useful to add a variable to keep track of the condition that decides when the game ends, then check that condition each time the bear catches a fish, for example.}
		@teacher{This part will be a little more complicated than the first part. Students should already have the end method present in their program and will just need to add code to it. The reference finish method looks like @bold{this}. Students may have come up with something completely different, but as long as the program communicates to the player that the game is over, it's fine. Finish (or end) should be called from the event listener. Students will most likely need an if statement to check if the number of fish eaten (a variable they could add) is equal to some predetermined number of fish. If that condition is true, then they should call the end/finish method.}
	}
                                       ]}

@lesson/studteach[
     #:title "Coding the Game"
     #:duration "90 minutes"
     #:overview "Students will add code to the methods controlling the middle part of the game."
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
        @points[@point{@student{Once you have the start and end of your game set up, it's time to code the actual game part. Below we have listed specifications for the catchSalmon and reset methods. The code you add to these methods must meet these specifications, but you are free to add additional functionality if you wish. If you have different methods to implement, then the combination of those methods must meet the combination of specifications blow.}
                        @teacher{This section is meant to be pretty open-ended. Student solutions will vary. When grading, it is recommended you run the program to check if the specifications are met rather than just looking at the code.}
                        }
	@point{@student{catchSalmon: @itemlist[@item{Bear moves to location of salmon}
				@item{Bear brings salmon to mouth before salmon disappears (is eaten)}			@item{Bear makes some sort of indication of enjoyment from consuming salmon}		@item{Bear resets to natural position}		
				@item{Update variable(s) to note that bear ate a salmon}]}
		@teacher{}
	}
	@point{@student{reset: @itemlist[@item{Move bear out of way of relocated salmon}
			@item{Move salmon to new location, using the locations list}
			@item{Make salmon visible}
			@item{Update variable keeping track of event listener's active state}]}
		@teacher{}
	}
                                       ]}

@lesson/studteach[
     #:title "Finishing the Event Listener"
     #:duration "20 minutes"
     #:overview "Students will update the event listener to call the methods at an appropriate time and incorporate variables."
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
        @points[@point{@student{Your event listener should already have calls to the methods you wrote in the previous sections in it. Now that you've actually written the methods, however, you may with to add additional conditional (if) statements in as well. Consider what has to happen for each method to be called. You may want to create a variable to determine when the event listener is active and when it is not. For example, if the bear is in the middle of eating the salmon, you don't want to start over if the user happens to click on the salmon again. You might also want to check if the game is over.}
                        @teacher{This first part asks students to add in if statements and variables. One variable should keep track of whether or not you want the event listener to be active, and the program should only execute the code inside the event listener if that variable is true. The other variable should keep track of the number of salmon the bear has eaten so far, and once that variable equals 5, for example, the game should end. This can be checked using another if statement.}
                        }
	@point{@student{You also want to make sure that you only catch the salmon when it is the salmon that is clicked on, not some other object in the world. To do this, use an if statement comaparing SModels. For example, @italic{event getModelAtMouseLocation == this.cap} evaluates to true if the carp (salmon) was clicked on and false if any other object in the world was clicked on. You can find @italic{event getModelAtMouseLocation} from the header of the event listener (you may have to scroll to the right to see it)}
		@teacher{The final if statement the students must add should check to make sure the salmon was clicked on. It would not make sense for the bear to eat the salmon if a tree or a squirrel was clicked on.}
	}
	@point{@student{Take this time to add in any additional code to your event handler. Once you finish, move on to the testing section.}
		@teacher{Student solutions may vary, so it is recommended that you grade based on how their program runs rather than on what their code looks like.}
	}
                                       ]}
@lesson/studteach[
     #:title "Testing"
     #:duration "30 minutes"
     #:overview "Students are given an opportunity to test their code for correctness in a strucutured manner meant to guide them towards finding possible mistakes."
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
        @points[@point{@student{This game has many parts to it, i.e. the methods you wrote, and as such there is potential for something to go amiss at many different points in your game. This warrants more extensive testing than previous programs you've written. To test your program, you'll want to essentially play the game you've just made and try to break it. This might sound counterintuitive, because why would you want to break a game you've made yourself? This is necessary because any other person playing your game is unpredictable and may not follow the instructions exactly. It is your job to make sure that something like the user clicking on a tree will not have any effect on the game. Turn to page 456 in your workbook and complete all the test cases given, then follow the directions to analyze the testing process.}
                        @teacher{In this section the students are essentially playing their game and recording what happens when they do different things. The "What Should Happen" column of the table is how a correct game would function, what they were aiming for. The "Passed?" column should be true/yes if what happened matches what should happen, and false/no if they don't match. For the analyzing portion, students only need to explain the test cases that did not pass UNLESS all their test cases passed, in which case they must pick one passed test case to analyze.}
                        }
                                       ]}
@lesson/studteach[
     #:title "Debugging"
     #:duration "30 minutes"
     #:overview "After testing their program to find mistakes, students are guided through the debugging process to fix their mistakes."
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
        @points[@point{@student{Debugging is a critical aspect of computer science. Unfortunately, it can also be one of the most frustrating and time-consuming parts of programming. With the correct approach, however, it doesn't have to be so painful. Referring to the table on page 456 of your workbook that you just filled out, attempt to fix any test cases that did not initally pass. You should have already outlined what the problem was and what you could do to fix it, so all you have to do in this step is implement that change. You may not fix the problem on your first try, and that's okay! Debugging is a whole process. Hopefully with each new attempt at a fix, you learn a little more about what the underlying problem is and gain new ideas for how to correct it. For this part of the assignment, it is okay to talk to your peers about the problems you're seeing and work towards a solution together. Try to refrain from showing others your code and looking at other students' code, but feel free to talk in depth about what isn't working as expected. Other students will likely have the same problem, and some may have already solved it!}
                        @teacher{If a student didn't have any failed test cases from the "Testing" section, then have them help other students debug their programs. Students may get very frustrated in this section, so remind them that it is natural for debugging to take awhile and they just have to keep pushing through. For this section it is okay for students to work together to find a solution. If they get really stuck, refer back to the reference code and use that to give them hints as to what they may be missing.}
                        }
                                       ]}
@lesson/studteach[
     #:title "Conclusion"
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
        @points[@point{@student{Congratulations, you just made your first video game! The key difference in this project from previous ones we've done was adding user input. Hopefully, though, you've discovered that it is not so difficult to deal with event listeners; think of them as a special kind of method. You should be impressed that you made a game you can show to your friends and have them play!}
                        @teacher{As this was the students' first introduction to making a video game, it was likely very difficult both conceptually and implementation-wise. Reinforce the idea that they just successfully learned how to do something new and should be impressed with themselves. With more practice, using event listeners will become simpler and less confusing.}
                        }
                                       ]}

}

