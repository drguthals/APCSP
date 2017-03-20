#lang APCSP/lib

@title{Recreating a Movie with Objects and Procedures}

@declare-tags[]

@unit-overview/auto[#:lang-table (list (list "" @code{}))]{
  @unit-descr{Students will watch a video of an Alice movie and recreate the movie when given the starter world for the movie. They'll explore do-together blocks and how changing the parameters of a procedure changes the program behavior. Finally, they'll create methods to compartmentalize their code into neater sections.}
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
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[
             @point{@student{Welcome to CS Principles! In this project, we'll learn about objects, procedures, and parameters. We'll make objects move, talk, think, and even dance! You'll watch a short movie and try to recreate it yourself in Alice. Along the way, you'll be asked to answer questions in your workbook, talk with your peers about ideas on how to recreate what you see, and ultimately, you'll open Alice and start coding!}
                     @teacher{}
                     }

		@point{@student{To get started, you'll watch a video of someone explaining how they approach recreating a video, and you'll get to see the first few lines of code that make up the video. Additionally, we'll provide you with the starter world for this video, i.e. the objects will have already been added to the scene, so all you have to do is add the code. Don't be afraid to try something even if, especially if, you're not sure it will work. Many of the correct values for parameters are not immediately obvious, and WILL require trial and error to figure out. Run your code often to check that it does what you expect and want it to, that is, match the video! Finally, do NOT forget to save! It takes very little time and will save you a lot of time and frustration if something happens and you lose your work. With that being said, watch the video below to get started.}
			@teacher{This part is optional. It gives the students a more in-depth overview of what exactly they will be doing as well as provides helpful tips on how to approach each part of the project. You may use all, part, or none of it as you see fit}
	}
              ]
         }

@lesson/studteach[
     #:title "Watching a Movie: Programming Style"
     #:duration "20 minutes"
     #:overview "Watch a video of what the students will be recreating, then fill out a table answering questions about it"
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list "BS-M")
     #:materials @itemlist[@item{Workbook}]
     #:preparation @itemlist[]
     
   ]{
        @points[
          @point{@student{Let's start by watching a video of what you'll be recreating. Click [@(hyperlink "https://drive.google.com/file/d/0B4mfcQCNQcBqdEs1YmhCNWcxVFE/view?usp=sharing" "here")] to watch it once before turning to page 394 in your workbook and filling out the table there, including names you'd give to the three characters, what actions each performs, and in which part of the movie the character first appears}
                 @teacher{It is recommended that you watch the video together once as a class first to force students to pay attention to the video before going to fill out their workbooks. Then they can rewatch it as needed while filling out the table. You can assign students to work in pairs or groups to facilitate discussion. If students are working together, check in on them periodically to make sure they are explaining their choices to each other and not just sharing/copying answers. If students are working individualy, walk among them to monitor progress and select a few students to explain their thought processes to you. Go over the answers as a group, calling on students to share their answers and go over why their answer is correct}
                 }
           ]}

@lesson/studteach[
     #:title "Programming Scramble"
     #:duration "20 minutes"
     #:overview "Students will be given lines of code from the program they need to write and put them in the correct order to do what they want to accomplish"
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list "6.NS.5-8" "N-Q" "5.G.1-2")
     #:materials @itemlist[]
     #:preparation @itemlist[@item{Student Workbooks, and something to write with}]
     #:prerequisites (list "Watching a Movie")
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{Are there locations that can be described using one coordinate system, that cannot be described 
                                                            using another? Can any valid coordinate system can be perfectly mapped to any other valid 
                                                            coordinate system?}]}
                )
        ]{
  @points[
      @point{@student{@bitmap{images/number-line.png} Try to unscramble the following pieces of code to recreate the beginning of the video (i.e. whale asks dolphin to dance, dolphin agrees, whale is excited, then dolphin is mean and swims away). You should rewatch the beginning before getting started, and feel free to refer back to the video as you go.}
              @teacher{Have students complete this task individually, then pair up and compare their answers.}
              }
           
                                ]
   }

@lesson/studteach[
     #:title "Explore in Depth"
     #:duration "20 minutes"
     #:overview "Students take a closer look at a few lines of code to really understood what each part is doing in their program"
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list)
     #:materials @itemlist[@item{}]
     #:preparation @itemlist[]
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        
        
@points[
        @point{@student{Now let's explore some lines of code to see what exactly they are doing. Answer the questions below in your workbook.}
                @teacher{Have the students work in pairs and take turns answering questions. Student A should answer the first question and explain their thought process to Student B, then vice versa for the next question. Have them continue switching back and forth until all questions are answered.}
                }
         
        @point{@student{Consider @italic{this.orca moveToward this.dolphin, 1.0}. In your workbook draw a circle around the object, underline the procedure, and put a box around the parameters. Which part of the code tells the orca which direction to move? Which part of the code tells the orca how far to move? How would our program change if we switched the places of @italic{this.orca} and @italic{this.dolphin}? Try it out on your own in Alice to see if your prediction was correct!}
                @teacher{}
                }
        
        @point{@student{Compare @italic{this.dolphin move FORWARD, 10.0} to the @italic{moveToward} procedure above. What parameters does the @italic{move} procedure take? Are they different from the parameters the @italic{moveToward} procedure takes? What might be the advantages and disadvantages of each procedure? Could we have used the @italic{move} procedure to make the orca move toward the dolphin? Could we have used the @italic{moveToward} procedure to make the dolphin swim off the screen?}
                @teacher{}
                }

	@point{@student{Take a look at @italic{this.dolphin say "Dolphinately!"} and @italic{this.orca think "Awesome :D"}. What are some similarities between these two procedures? Could you tell them apart based solely on their parameters? How does using @italic{think} instead of @italic{say} affect our program?}
		@teacher{}
		}
        ]}

@lesson/studteach[
     #:title "Starter World"
     #:duration "10 minutes"
     #:overview "Students download the world and get comfortable with it."
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list "A-SSE.1-2" "BS-CE" "5.OA.1-2")
     #:exercises (list (make-exercise-locator "Order-of-Operations" "complete-coe-from-arith1")
                       (make-exercise-locator "Order-of-Operations" "complete-coe-from-arith2")
                       (make-exercise-locator "Order-of-Operations" "arith-to-coe1")
                       (make-exercise-locator "Order-of-Operations" "arith-to-coe2")
                       (make-exercise-locator "Order-of-Operations" "arith-to-coe3")
                       (make-exercise-locator "Order-of-Operations" "coe-to-arith1")
                       (make-exercise-locator "Order-of-Operations" "coe-to-arith2")
                       (make-exercise-locator "Order-of-Operations" "match-arith-coe1")
                       (make-exercise-locator "Order-of-Operations" "coe-to-math-answer1")
                       (make-exercise-locator "Order-of-Operations" "coe-to-math-answer2"))
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{Have students practice translating very simple (one-operation) expressions into 
                                                              simple (one-circle) Circles of Evaluation. By choosing the numbers in these 
                                                              examples carefully, you can gradually introduce nesting by replacing a number 
                                                              in one expression with the Circle of Evaluation for another expression that 
                                                              evaluates to the same number. @italic{Replace the 7 in @code{7+5} with the 
                                                                                                                     Circle for @code{10-3}.}}]}
                @pacing[#:type "misconception"]{@itemlist[@item{This is the first opportunity to expose students to core vocabulary words, 
                                                                so be sure to use words like @bold{function}, @bold{value} and @bold{expression} 
                                                                carefully and consistently. Ask students to identify the parts of a Circle of 
                                                                Evaluation, and push them to use the vocabulary as well.}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[
                @point{@student{We're finally ready to start coding. Click on this @bold{link} to download the starter world for this program. The scene will already be set up for you with all the objects needed. If you would like, however, you can attempt to set it up yourself. An instructional video explaining how you might go about this can be found @bold{here}. Once you have downloaded the starter world, follow the instructions @bold{here} to open the world in Alice. Take a moment to explore the world, including all its objects. Can you find the shark? Once you feel comfortable, move on to the next step.}

                        @teacher{If students have questions about opening an Alice world, direct them to the instructions link. If they can't find the shark, suggest that they play around with the camera view menu. If they are still stuck after that, have them select the layout scene view. The shark should now be visible on the right.}
                        }
                                                                                                                                                                ]
         }

@lesson/studteach[
     #:title "Intro to Programming"
     #:duration "15 minutes"
     #:overview "Students are introduced to the programming environment"
     #:learning-objectives @itemlist[@item{Convert Circles of Evaluation into code}
                                     @item{Enter and evaluate code expressions for arithmetic on the computer}
                                     @item{Understand the goal of error messages from the computer}]
     #:evidence-statements @itemlist[@item{Students will be able to identify the Interactions and Definitions areas}
                                     @item{Students will be able to enter and evaluate simple arithmetic expressions in the Interactions area}
                                     @item{Students will be able to convert Circles of Evaluation into correctly-formed programs}
                                     @item{Students will be able to explain an 'unbounded identifier' error message}
                                     @item{Students will be able to explain the purpose of error messages}
                                     @item{Given a Circle of Evaluation, students will be able to complete a partially-written program}
                                     @item{Given a bank of Circles of Evaluation and programs, students will be able to match them}]
     #:product-outcomes @itemlist[]
     #:standards (list "A-SSE.1-2" "N-Q" "BS-CE" "BS-PL.1" "BS-IDE")
     #:materials @itemlist[@item{Editing environment (WeScheme or DrRacket with the bootstrap-teachpack installed)}]
     #:preparation @itemlist[@item{Computer for each student (or pair), running WeScheme or DrRacket}
                              @item{Students are logged into WeScheme.org, OR have opened DrRacket.}
                              @item{Student Workbooks, and something to write with}
                              @item{Overhead projector}]
     #:prerequisites (list "Order of Operations")
     #:exercises (list (make-exercise-locator "Intro-to-Programming" "complete-code-from-coe1")
                       (make-exercise-locator "Intro-to-Programming" "coe-to-code1")
                       (make-exercise-locator "Intro-to-Programming" "coe-to-code2")
                       (make-exercise-locator "Intro-to-Programming" "coe-code-matching1")
                       )
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[
                @point{@student{Open the programming tool of your choice: If you've installed, DrRacket, double-click the 
                                application to launch it. If you are using the online-tool, @login-link["click here to log in"]
                                enter your username and password to log in, then click "Start a New Program".}
                        @teacher{Have the students look at the editor on their computers. Refer to overhead 
                                 projector as necessary.}
                        }
                 
                @point{@student{@bitmap{images/wireframeIDE.png}This screen is called the @vocab{editor}, and it looks something
                                 like the diagram you see here. There are a few buttons at the top, but most of the screen is 
                                 taken up by two large boxes: the @vocab{Definitions area} on the left and the 
                                 @vocab{Interactions area} on the right.}
                        @teacher{The Definitions area is where programmers define values and functions in their program, 
                                 while the Interactions area allows them to experiment with those values and functions. 
                                 This is analogous to writing a series of function definitions on a blackboard, and having 
                                 student evaluate expressions using those function on scrap paper. As students are not yet 
                                 defining values of their own, it is not important that students understand this distinction 
                                 right now.  For now, we will work only with the Interactions area.}
                        }
                
                @point{@student{A program is a @vocab{legal expression} that, when evaluated, produces a value. You've been
                                               writing programs using mathematical expressions since you first learned how 
                                               to add! Just as in English, there are rules that determine whether a sentence
                                               makes sense. Programs have rules too!  A program can be very complicated, but
                                               it doesn't have to be: the simplest programs of all are just Numbers.}
                        @teacher{Draw students' attention to the Language Table (see Lesson Overview for Unit 1),
                                 which currently sits empty. Add "Numbers" to the Types section of the language 
                                 table.}
                        }
                @point{@student{@bannerline{Code Rule 1: All values are legal expressions.}
                                 @activity[#:forevidence "BS-IDE&1&1"]{What do you think @code{4} will evaluate to? 
                                                                       @editor-link[#:interactions-text "4"
                                                                                    "Click here to test it out."]}
                                              @itemlist[@item{Enter 4 in the Interactions area and hit "Return". You
                                                              will see the value @code{4} appear on the next line in 
                                                              the Interactions area.}
                                                        @item{Type 10 in the Interactions area and hit "Return".  Now the 
                                                              value @code{10} appears in the Interactions area.}
                                                         @item{Try evaluating numbers, like @code{10345017}, or negative 
                                                               numbers, like @code{-2}. Is there a limit to how big a number can be?
                                                               What happens if you write a decimal? What happens when you click on
                                                               a decimal, like @code{0.75}? You get a new type of number, a 
                                                               fraction, like @code{3/4}.}]
                                }
                        @teacher{The editing environment evaluates all fractions and returns them as decimals by default. This can be
                                 surprising to students at first, so you may want to take a moment to explain what's going on, and 
                                 show them that these decimals can be converted back to fractions just by clicking on them.  The 
                                 environment uses standard annotations for repeating, non-terminating decimal expressions and 
                                 properly handles expressions like @math{(\sqrt -1)}.  If you want to work with those kinds of 
                                 numbers in your class, enter them to get familiar with how they appear in the Interactions area.}
                        }
           
                
                @point{@student{@activity[#:forevidence "BS-IDE&1&2"]{The computer obviously knows about Numbers, but what happens
                                                                      if you type in something that it @italic{doesn't} know about?
                                                                      Will it complain? Crash? Guess?
                                                                      @editor-link[#:interactions-text "dog" "Try asking the computer"] 
                                                                      to evaluate @code{dog} in the Interactions area.}
                                 These error messages are really useful for programmers. Rather than saying "this program doesn't 
                                work", the computer does the best it can to tell you what went wrong, and to give you as much 
                                information as possible to help you fix the problem. Make sure you always read these messages carefully!
                                 }
                        @teacher{The error message uses the term "variable".  Don't worry if your students don't already know this 
                                 term; we will teach it to them shortly.  For now, students just need to get used to error messages 
                                 and the kinds of problems that they catch in programs.}
                        }
                
                @point{@student{The Circles of Evaluation are also easy to convert into computer programs. To translate a Circle of
                                Evaluation into a program, begin with an open parenthesis @code{(}, and then the function written at
                                the top of the circle. Then translate the inputs from left to right in the same way, adding a closing
                                parenthesis @code{)} when you're done. This process gives us the second rule for @vocab{expressions}:  
                                @bannerline{Code Rule 2: Each open parenthesis is followed by one function, then by one or more legal
                                            expressions, and finally by a closing parenthesis.}
                                 @bitmap{images/FixedCircle.png}Here is the code for this Circle of Evaluation: @code{(- 4 5)}
                                 @activity[#:forevidence "BS-PL.1&1&2"]{ @editor-link[#:interactions-text "(- 4 5)" "See what happens"]
                                                                         when this code is entered into the Interactions area.
                                                                         Press the Return key to evaluate the program. You should 
                                                                         see @math{-1} as an answer.
                                                                        }
                        }
                        
                        @teacher{Have students practice converting simple Circles of Evaluation into code.  If you want to help students 
                                 understand when to use the parentheses, here are two explanations that we find useful.  First, the
                                 parens look like the Circle, and the Circle encloses the function name and its inputs.  Second, we
                                 use a more visual description of an ant eating its way through the expression.  The ant eats into the 
                                 Circle (an open paren), then goes to the function at the top, then to the arguments from left to right,
                                 then finally out of the Circle (a close paren).  If the ant encounters another Circle while writing 
                                 down the arguments, it needs another open paren, etc.}
                        }   
                @point{@student{@bitmap{images/NestedCircle.png}When a Circle of Evaluation has other circles inside of it, the 
                                 translation still follows the same rules: each Circle requires a new set of parentheses:
                                 @code{(* 6 (+ 4 5))}
                                 @activity[#:forevidence "BS-PL.1&1&2"]{@itemlist[@item{Try entering this code into the Interactions 
                                                                                        area. What should the program evaluate to 
                                                                                        when you hit Return?}
                                                     @item{Practice converting other Circles of Evaluation you've drawn into code.}]}}
                        @teacher{[@(hyperlink "https://www.youtube.com/watch?v=vgkahOzFH2Q" "Video on Roles in Pair Programming.")]
                                  Scaffolding for Pair Programming: Talk to students about the roles of @italic{Driver} 
                                  and @italic{Navigator}. The Driver is the student with their hands on the keyboard - they're 
                                  in charge of typing, using the mouse, etc. The Navigator should be telling the Driver what to
                                  type, and pointing out mistakes or suggesting things. It's important to clarify what these 
                                  roles are (perhaps reinforcing them with a visual), to ensure that both partners are active 
                                  and talking to one another about the task at hand.  The linked video does a great job discussing these roles.}
                        }
               
                @point{@student{@bannerline{All of the expressions that follow the function name are called @vocab{arguments} to the 
                                            function. The following diagram summarizes the shape of an expression that uses a function. 
                                            @bitmap{images/ExpressionDiagram.png}}
                                @activity[#:forevidence (list "BS-CE&1&2" "BS-CE&1&4")]{
                                        For practice, turn to @worksheet-link[#:name "Circle-of-Evaluation-Practice"]
                                        in your workbook. For each mathematical expression, draw the Circle of Evaluation, then convert
                                        that Circle into Racket code.}}
                        @teacher{}
                        }
                @point{@student{When expressions don't follow the code rules, the computer will tell you that it found a problem.  The
                                computer also gives you information to help you fix the problem. This information is called an 
                                @vocab{error message}. We'll talk more about error messages later.  For now, we just want you to see 
                                a couple of error messages so that you'll know what they are if you run into one while programming.
                       @activity[#:forevidence "BS-IDE&1&2"]{Enter each of the following illegal expressions in the Interactions area 
                                                             and look at the error message or behavior that the computer gives you. 
                                 @itemlist[@item{@code{(5 * 6)} [puts the function in the middle, instead of at the front]}
                                           @item{@code{(*5 6)}  [missing a space after the function]}
                                           @item{@code{* 5 6)}  [forgets the open parenthesis]}
                                           @item{@code{(* 5 6}  [forgets the close parenthesis]}
                                          ]}}
                       @teacher{At this point, the goal is simply to have students @italic{see} error messages.  Students are not 
                                expected to be experts at reading error messages this early 
                                (you will drill this later).  NOTE: When a close parenthesis is missing, hitting return will do nothing, 
                                because the computer is waiting for the parenthesis.  When an open parenthesis is missing, WeScheme
                                does nothing and waits for the programmer 
                                to add the parens.  If students hit enter and "nothing happens", they should check their parentheses. 
                                Also note that if you do this sequence of exercises with @code{+} instead of @code{*}, the error 
                                appears differently, because @code{+5} is a perfectly valid number (just like @code{-5}).}
                      }
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
        @points[@point{@student{You've done a lot in this first unit!  
                                @itemlist[@item{You took a game apart to see how the parts move}
					  @item{You designed your own game, that you'll make during this course}
                                          @item{You practiced using coordinates to put characters into a screen}
                                          @item{You learned about order of operations, Circles of Evaluation, how to turn Circles of
                                                Evaluation into programs, and how to run those programs to get answers.}]
                        In the next unit, we'll begin writing programs for more interesting things than just arithmetic.}
                        @teacher{Make sure student names are on the Game Design page. Take this page, or take photos of it, to prep game images for a later Unit. }}
               ]
         }
}

