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
     #:standards (list "A-SSE.1-2" "BS-CE")
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

}

