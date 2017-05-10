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
     #:exercises (list)
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
     #:title "Introducing Pseudocode"
     #:duration "15 minutes"
     #:overview "Students are introduced to the concept of writing pseudocode"
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list "A-SSE.1-2" "N-Q" "BS-CE" "BS-PL.1" "BS-IDE")
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:prerequisites (list "Order of Operations")
     #:exercises (list)
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{
        @points[
                @point{@student{Google defines pseudocode to be "a notation resembling a simplified programming language, used in program design." That definition was pretty technical, so let's break it down a little. Think of pseudocode as the closest you can get to actual code without writing actual code. So it will look different from the code you actually use in your program, but all the steps will be there in the right order. If you do it correctly, you should be able to translate your pseudocode line by line into actual code. The purpose of pseudocode is to be able to write down your thoughts and ideas without being encumbered by having to actually write code with the correct syntax. This would be more useful if you were using a programming language that required you to write code yourself, unlike Alice, in which you just drag blocks of code without having to worry about syntax. This will still be useful to you though to get some ideas down before you approach coding. Starting a program can be daunting, so hopefully, if you start with some pseudocode it will be easier as you already have a good idea of what you want to be doing. It will also be useful for you to just be able to write down what you see happening in the video, and then take that line and translate it into Alice code. Try watching the video again, pausing as you go, and make a list of what happens.}
                        @teacher{Pseudocode is an important skill in computer science. This is only a brief introduction. This project will be very simple for some students and they will not understand why they have to take this extra step. Explain to them that while this movie is fairly simple to recreate directly in Alice, other projects will be more complex and it will be useful to know how to break things into steps.}
                        }
               ]}


@lesson/studteach[
     #:title "Writing Your Own Pseudocode"
     #:duration "40 minutes"
     #:overview "Students will continue their work from the last section."
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
        @points[@point{@student{Take a look at the list you just made. Your list for the first 5 seconds of the video might look something like this:  
                                @itemlist[@item{Whale asks dolphin to dance}
					  @item{Dolphin spins around}
                                          @item{Dolphin says yes}
                                         ]
                       }
                        @teacher{Hopefully most students' lists match the list here. If a significant number are confused, go over this section together as a class and explain how the list was formed, i.e. writing down what happens in the video.}
	}
	@point{@student{Now to translate this into pseudocode, you will want to make your list include the object and the specific action. For example:
			@itemlist[@item{Whale says "Whale you dance with me?"}
				@item{Dolphin rolls around twice}
				@item{Dolphin says "Dolphinatley"}]
From there you could easily translate into Alice code blocks:
			@itemlist[@item{@italic{this.orca say "Whale you dance with me?"}}
				@item{@italic{this.dolphin roll RIGHT, 2.0}}
				@item{@italic{this.dolphin say "Dolphinately!"}}]}
		@teacher{Even if most students were fine with the original list, it is still a good exercise to go through this and the following parts together as a class. This will give the students a concrete example of what pseudocode looks like, how to form it, and finally, how to translate it into actual code.}

		}
	@point{@student{Now try to write pseudocode for the rest of the video. You can break it up into chunks to make it easier. This way you can add code as you go, while still utilizing pseudocode as an in-between step. Turn to page 77 in your workbook to write pseudocode for the movie. The workbook will direct you as to what portions of the video you should write pseudocode for.}
		@teacher{Give students approximately 30 minutes to work on pseudocode for the rest of the video. Have them talk to each other if they get stuck. If they haven't finished in the allocated time, they should move on to the next section anyway. They can finish writing pseudocode later as part of the process to recreate the movie. If some students finish early they can start translating pseudocode into Alice code on the computers.}}
               ]
         }


@lesson/studteach[
     #:title "Instructional Video"
     #:duration "10 minutes"
     #:overview "Students will think about getting started with translating their pseudocode and adding code to Alice."
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
        @points[@point{@student{Skip this part if you think you know how to get started. If you don't, that's okay! Watch this @bold{video}; it'll go through the thought process necessary to start recreating a movie. Pay careful attention to the explanations as well as the code blocks; you'll need to follow a similar thought process yourself to recreate the rest of the movie.}
                        @teacher{It is suggested that you watch the video as a class. Some students may want to start themselves without watching the video. Use your discretion in allowing this. It may be easier to watch the video as a class once or twice first, then release students to get started. They may rewatch the video several times as they attempt coding for themselves.}
	}               ]
         }

@lesson/studteach[
     #:title "Try it Yourself"
     #:duration "200 minutes"
     #:overview "Students will recreate the video in Alice."
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
        @points[@point{@student{Now you're ready to try everything for yourself! Your task is to finish recreating the movie using all the starter code we've given you. If you get stuck, go back and rewatch the instructional videos we've provided you with and try writing/rewriting pseudocode. If you get really stuck, consult with your fellow students. Don't copy their code, but you can discuss what difficulties you're having. They may have helpful suggestions or they may be having the same problem, and you can work on it together. As a very last result, you may ask your teacher for help, but do try all the aforementioned strategies first. It will be much more rewarding if you figure it out for yourself.}
                        @teacher{This is the final section of this project, but it will likely take a comparable amount of time to the time already spent on this lesson. Students are to work primarily by themselves, but are encouraged to consult with each other if they run into difficulties. Before they ask for your help, they should have exhausted all other resources available to them. If students do come to you for help, the code for the original movie can be found @bold{here}. Comparing the correct code to the student's code will often give you an opportunity to point out where they went wrong and suggest what they might do to fix it.}
	}               ]
         }

@lesson/studteach[
     #:title "The do-together Block"
     #:duration "25 minutes"
     #:overview "This section identifies where students need to use a do-together block and how it changes their program."
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
        @points[@point{@student{If you've never used a do-together block, you'll find these @bold{videos} very helpful and informative. If you have used a do-together block before, but are still shaky on the concept, or would like a refresher, the videos above will be helpful for you, too. If you're extremely comfortable with a do-together block, you may move on. Be aware, however, that the second video does identify which part of the movie requires a do-together block. It should be fairly obvious when watching the differences in the videos above, but it could be hard to identify by simply watching the movie because the procedures combined in the do-together block actually change the resulting motion of objects. We don't expect you to to be able to identify this and the procedures used, but you're welcom to try. If you get too frustrated, though, the videos are here to help you.}
                        @teacher{Have students engage with this section after they've already made progress in recreating the movie. Once they reach the part where the shark and whale start dancing, introduce this section. Students may complete this section at different times depending on how fast they complete the first part of the movie. This section primarily involves watching videos, so the class does not have to go through this together.}
	}               ]
         }

@lesson/studteach[
     #:title "Adding Methods"
     #:duration "30 minutes"
     #:overview "Once students finish coding their program, they will add methods in to make it neater."
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
        @points[@point{@student{Congratulations on recreating the movie! Right now, all your code should be in myFirstMethod. This method gets run automatically whenever you run your program. You may have noticed that your code is just one large block. This is reasonable for a short program like the one you just wrote, but what if your program was 5 or 10 times longer? Operating Systems like Windows are comprised of millions of lines of code? Do you think that code is just one GIANT block? No, that would make it near impossible to ever find and edit specific pieces. So what's the solution? Methods. Methods are essentially smaller blocks of code that perform a specific function and can be called from other methods. You've actually already used them! All the procedures like @italic{move}, @italic{say}, and @italic{turn} are methods you're calling from myFirstMethod. Notice how they are informatively named so that you can be fairly sure of what it will do without needing to look at the code it contains. Your next task will be to segment your current code into methods and then call those methods from myFirstMethod so that the only lines of code in myFirstMethod are method calls.}
                        @teacher{Students should be 100% done with recreating the movie before moving on to this part. It may seem confusing at first because it is an entirely new concept; however you can reassure the students that this part will be much more straightforward than what they've done so far and that they won't have to add many new lines of code.}
	}
	@point{@student{Let's add a new method to your scene! Go to the Scene tab and under procedures, click Add Scene Procedure. In Alice, procedure is synonymous with method. Let's name it whaleAsksDolphinToDance. Alice should open this new method in a new tab. This method will contain all the code necessary for the whale to ask the dolphin to dance, the dolphin to accept, and the whale to be excited about it. Drag the necessary blocks of code from myFirstMethod into this new method (hint: use the clipboard in the top right corner). Finally, delete these blocks of code from myFirstMethod and add a call to whaleAsksDolphinToDance at the very top of myFirstMethod. Go to the "this" tab in the left bar and under procedures you can find whaleAsksDolphinToDance at the bottom of Scene's Editable Procedures. Run your program to check that it behaves exactly the same.}
		@teacher{If students find that their program doesn't run identically it is likely because they forgot to call the new method from myFirstMethod, or they didn't remove the lines of code they added to whaleAsksDolphinToDance from myFirstMethod.}}
	@point{@student{See, adding a method wasn't too hard! Let's add a few more. Add whaleGetsRejected, sharkMeetsWhale, danceParty, and punnyConclusion to the Scene. The names should pretty much explain which blocks of code you should put into each method, but you can use your discretion as necessary. When you're done, myFirstMethod should contain calls to 5 different methods. See how much neater it looks now!}
		@teacher{If students are concerned about where to partition their code, you can look at the solution world and guide them based on that, but it doesn't really matter as long as their partitions make some sense based on the names of the methods.}}
               ]
         }
@lesson/studteach[
     #:title "Introducing Loops"
     #:duration "30 minutes"
     #:overview "Students will alter the dance party to repeat a sequence multiple times."
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
        @points[@point{@student{Now that your code is segmented into methods, let's make one last change to your program. We're going to alter the danceParty method to make the shark and whale do the cool twisty-turny thing multiple times. You might be thinking, okay, so I'll just copy and paste the code for that and then I'll be good to go! You're not wrong, but that can get unreasonable pretty quickly. What if we asked you to have that sequence repeat 100 times? It would be pretty ridiculous to copy and paste the same lines of code 100 times and try to keep track of how many you have. Fortunately, us programmers are pretty lazy and always looking for a way to make the computer do more of the work for us. For this problem of repeating code, we'll use a @italic{loop}.}
                        @teacher{Students need to have their methods finished before beginning this section as it asks them to specifically modify one of the methods.}
	@point{@student{So what is a loop? Well, there are a few different types, but the one we'll be using here is called a count loop in Alice. You'll give it a number to count up to and it will repeat the lines of code you put inside that number of times. To test it out, in myFirstMethod drag a count loop to the very top (you can find this loop in the bottom bar, called count). Have it count up to 3, and add a line of code to make the whale spin (turn) around once. Run your program. You should notice that the whale spins around a total of three times, the result of having it spin around once executed three times by the loop. Now delete that loop and go to the danceParty method. Add a count loop that counts up to 5 right before the do-together blocks. Drag all the do-together blocks into the loop, leaving everything else outside it. Run your program, then turn to your workbook and answer the following questions:
		@itemlist[@item{Did your program run as you expected it to?}
			@item{What changed from before you added the count loop?}
			@item{How could you change your code to make the specified dance sequence execute 10 times instead of 5?}]
		 }
		@teacher{}
	}
	@point{@student{Now let's assume that the whale is a quick learner and catches on to the shark's move after the first time. Change your code so that after the first repetition of the move, the shark and whale do it together. This may involve moving some code back out of the loop and combining do-together blocks. Remember, we still only want the move to happen a total of 5 times.}
		@teacher{The key to this step is that the code currently in the loop needs to be duplcated right above the loop so the shark can "teach" the whale his move. Then the do-together blocks in the loop need to combined from 4 blocks into 2 so the shark and whale are dancing simultaneously. The loop should also be changed to only count up to 4 since one repetition is done before the loop starts.}
	}
	}               ]
         }

@lesson/studteach[
     #:title "Extra Credit"
     #:duration ""
     #:overview "Students who finish early can do an additional activity"
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
        @points[@point{@student{Create your own short movie in Alice with 2-3 characters, 3-5 different procedures, and 20-30 lines of code. You can watch sample videos @bold{here}, @bold{here}, and @bold{here} to get ideas. Be as creative as you can!}
                        @teacher{There will likely be a wide range of how long it takes students to finish. For those who finish early, give them this extra credit project to work on while the other students finish the original project. Students may collaborate on this extra credit project if they wish.}
	}               ]
         }
}

