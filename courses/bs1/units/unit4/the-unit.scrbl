#lang APCSP/lib
@declare-tags[]

@title{Unit 4: Alice Boat Race Tutorial Part 2}

@unit-overview/auto[]{
 @unit-descr{By the time your students have finished this project they will have an understanding of Methods, lists, for each loops, user input, events, if-statements, while-loops, boolean expressions, printing directions to users, commenting, mathematical expressions. The end of the lesson provides an opportunity to use these topics freely to create an original ending to the race.
 }
}
@unit-lessons{
 @lesson/studteach[
 #:title "Refamiliarize Yourself with your Boat Race"
 #:duration "10 minutes"
 #:overview ""
 #:learning-objectives @itemlist[]
 #:evidence-statements @itemlist[]
 #:product-outcomes @itemlist[]
 #:standards (list)
 #:materials @itemlist[]
 #:preparation @itemlist[]
 #:prerequisites (list)
 #:pacings (list)
 ]{@points[@point{@student{It's been a little while since we looked at our code. Let's go over what we have already so that we remember what we're doing.}}
          @point{@student{@activity["Last time we: "
                                    @itemlist[@item{Watched a movie to understand what our code should do.}
                                                   @item{If you forgot, go back to the last assignment and rewatch the video}
                                                   @item{Debugged our code using a table in our workbook}
                                                   @item{Made an obstacle course}
                                                   @item{Made a timer}
                                                   @item{Used key-listeners to create controls for our boats}
                                                   @item{Made a score}]]}}
          @point{@student{@activity["This time we will: "
                                    @itemlist[@item{Create instructions for the user}
                                                   @item{Start the game}
                                                   @item{Learn about commenting our code}
                                                   @item{Add an ending to our race!}]]}}
           @point{@student{@activity{Reread through the code we have already written}}
                   @teacher{Staying familiar with code will make it much easier when we mention things we've already done}}
          ]}
    
 @lesson/studteach[
 #:title "Let's Create Instructions!"
 #:duration "20 minutes"
 #:overview ""
 #:learning-objectives @itemlist[]
 #:evidence-statements @itemlist[]
 #:product-outcomes @itemlist[]
 #:standards (list)
 #:materials @itemlist[]
 #:preparation @itemlist[]
 #:prerequisites (list) 
 #:pacings (list)
 ]{@points[@point{@student{@activity["Now that we’ve implemented all the basic functionality of the game, we’re going to create instructions so that users know how to play!"
                                     @itemlist[@item{Start by @bold{creating a new Billboard()} named @bold{“instructions”}}
                                               @item{@bitmap{images/41.png}}
                                               @item{@bitmap{images/42.png}}
                                               @item{@bold{Import the gameinstructions.bmp file}}
                                               @item{Position your instructions billboard in the @bold{middle of the screen} and @bold{close to the camera}.}
                                               @item{@bitmap{images/43.png}}]]}}
           @point{@student{@activity["Next, we’re going to make it so that the game starts when the instructions are clicked on."
                                     @itemlist[@item{We need an event to handle this so let’s add one}
                                               @item{We’re going to use a @bold{mouseclick-listener}}
                                               @item{@bitmap{images/44.png}}]]}}
           @point{@student{@activity["Next, since we want our listener to interact with the instructions, let’s set the mouseclick so that it makes the instructions dissappear"
                                     @itemlist[@item{We can do this by @bold{dragging the instructions’ “setOpacity” procedure} into the @bold{mouse click listener}}
                                               @item{@bitmap{images/45.png}}
                                               @item{Now test your code to make sure that it works.}
                                               @item{Does anything happen that shouldn’t?}
                                               @item{Perhaps something like a timer starting even though we haven’t clicked on the instructions to start the game?}
                                               @item{What can we do about this?}]]}}
           ]}
       
       
           @lesson/studteach[
 #:title "Starting the game"
 #:duration "25 minutes"
 #:overview ""
 #:learning-objectives @itemlist[]
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
  @points[@point{@student{We need a way so that our timer doesn’t start before the instructions are clicked. We can do this by changing the conditions in the timerDecrease method to depend on more than one thing.}}
          @point{@student{@activity["Let’s begin by creating a new boolean variable called “gameOn”."
                                    @itemlist[@item{Where should we declare our gameOn variable if we have to use it in more than one method?}
                                              @item{@bold{declare it as a global variable in the scene properties}}
                                              @item{Where should we initialize gameOn to true?}
                                              @item{@bold{In mouseClick}}
                                              @item{Declare your gameOn boolean in the @bold{scene properties} and initialize it to @bold{false}.}
                                              @item{@bitmap{images/46.png}}
                                              @item{In our @bold{mouseClick listener}, let’s @bold{set our gameOn boolean to true}}
                                              @item{@bitmap{images/47.png}}]]}}
             @point{@student{Now let’s think about how we can use this boolean value to start the timer. We have a while loop in timerDecrease that runs based on some parameters, if we add this boolean as a condition to that while loop we can have it run ONLY when gameOn is true}}
             @point{@student{In your @bold{timerDecrease while loop} change the parameters so that the condition is @bold{BOTH this.timerValue > 0 AND this.gameOn is true} @bitmap{images/48.png}}}
             @point{@student{Let’s test our code}}
             @point{@student{@activity{Uh Oh!!! The timer doesn’t start! What’s going on! BUG #4 FILL OUT YOUR WORKBOOK}}}
             @point{@student{Why doesn’t clicking on the instructions cause the timer to start? Perhaps the boolean isn’t being set to true? Where do we set the boolean to true?}
              @teacher{In mouseClick}}
             @point{@student{Why wouldn’t mouseClick be setting the boolean to true?}
              @teacher{IT’S IN A DO IN ORDER BLOCK, Let’s add a do TOGETHER block.}}
             @point{@student{Why isn’t this working?}
              @teacher{Ask your students to think about what we could do. This one is tricky so if they get stuck don’t worry. Have them move our do together block that calls the timeDecrease and scoreIncrease methods into our do together block in the mouseClick listener @bitmap{images/49.png} @bitmap{images/50.png}}}
             @point{@student{Test your code again! }}
             @point{@student{@activity["Let’s add one last thing! Our user doesn’t know that they have to click the instructions to start the game!"
                                       @itemlist[@item{Let’s print some MORE instructions telling them to do so!}
                                                 @item{Add a new @bold{text object} that says @bold{“Click Instructions to Start”}.}
                                                 @item{@bitmap{images/51.png}}
                                                 @item{Position it in your screen so that it’s visible when we start the game}
                                                 @item{@bitmap{images/52.png}}]]}}
             @point{@student{@activity["We’re going to need to make THIS disappear when we click, so let’s do the same thing we did with the instructions"
                                       @itemlist[@item{@bold{Add clickToStart’s “setOpacity”} procedure into our @bold{mouseClick listener}}
                                                 @item{@bitmap{images/53.png}}
                                                 @item{Run your code to test its functionality}]]}}
             ]}

       
 @lesson/studteach[
 #:title "Commenting Exercise"
 #:duration "25 minutes"
 #:overview ""
 #:learning-objectives @itemlist[]
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
  @points[@point{@student{Remember that table we filled out at the beginning? We’re going to go through our code and make comments at each time we used one of the topics listed in it.}}
          @point{@student{Making Comments:
              You can make comments in Alice by dragging the comment variable into code segments
              For each comment, write what topic we used and how it’s being used in the code
              Example: “Method: timerIncrease. I use this method to increase my timer”}}
          @point{@student{Because this is the first time we've commented in Alice we want you to make a comment for EACH line of code in your assignment}}
          ]}
       
       
 @lesson/studteach[
 #:title "Add an Ending!"
 #:duration "70 minutes"
 #:overview ""
 #:learning-objectives @itemlist[]
 #:product-outcomes @itemlist[]
 #:standards (list)
 #:materials @itemlist[]
 #:preparation @itemlist[]
 #:pacings (list 
            @pacing[#:type "remediation"]{@itemlist[@item{}]}
            @pacing[#:type "misconception"]{@itemlist[@item{}]}
            @pacing[#:type "challenge"]{@itemlist[@item{}]}
            )
 ]{@points[@point{@student{As I’m sure you have noticed, we never created an ending to our race! What happens when the timer runs out or when you get all of the objects!}
             @teacher{You can use this part of the project as a review to help solidify everything your students just learned. Encourage them to implement the topics we covered when they create their ending.}}
          @point{@student{Although the overall implementation is completely up to you, we do have some requirements. Let's take a look at the table from your workbook that we filled out in the last part. @bitmap{images/table of topics - introduction.png}}}]}
  @point{@student{@activity{All the topics that you answered "no" to (so the topics that you hadn't used before this assignment) must be used in your ending.}}}
  @point{@student{@activity{To complete this portion of the assignment at LEAST 5/10 of the topics you learned must be used in your ending}}}
}
