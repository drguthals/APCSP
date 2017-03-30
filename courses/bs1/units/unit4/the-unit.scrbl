#lang APCSP/lib
@declare-tags[]

@title{Unit 4: Alice Boat Race Tutorial Part 2}

@unit-overview/auto[#:lang-table (list (list "Number" @code{+ - * / sqr sqrt expt})
                                       (list "String" @code{string-append string-length})
                                       (list "Image"  @code{rectangle circle triangle ellipse star text scale rotate put-image}))]{
@unit-descr{Students continue to practice the Design Recipe by applying it to simple problems.}
 }
@unit-lessons{
@lesson/studteach[
     #:title "Refamiliarize Yourself with your Boat Race"
     #:duration "10 minutes"
     #:overview "It's been a little while since we looked at our code. Let's go over what we have already so that we remember what we're doing."
     #:learning-objectives @itemlist[@item{Students practice using Contracts to create examples of functions}
                                     @item{Students learn to abstract over examples to create functions}]
     #:evidence-statements @itemlist[@item{Given a definition, students will be able to identify the Name, Type and Value that is defined.}
                                     @item{Given a contract and purpose statement for a simple, one-variable function, students will be able to write two Examples}
                                      @item{Given two examples for a simple function, students will be able to identify the variable}
                                      @item{Given two examples for a simple function, students will be able to write the definition}]
     #:product-outcomes @itemlist[@item{Students will use the Design Recipe to define a function, which is used to make a rocket fly.}]
     #:standards (list "A-SSE.1-2" "F-IF.1-3" "F-IF.4-6" "BS-DR.1" "BS-DR.2" "BS-DR.3" "8.F.1-3")
     #:materials @itemlist[@item{Pens/pencils for the students, fresh whiteboard markers for teachers}
                            @item{Class poster (List of rules, language table, course calendar)}
                            @item{Language Table (see below)}
                            @item{Student @resource-link[#:path "workbook/StudentWorkbook.pdf" #:label "workbook"] folders with names on covers, and something to write with}]
     #:preparation @itemlist[@item{Write agenda on board}
                              @item{Display Class posters, Language Table, Design Recipe}
                              @item{Students are logged into WeScheme.org, OR have opened DrRacket.}
                              @item{"Rocket" [Rocket.rkt from @resource-link[#:path "source-files.zip" #:label "source-files.zip"] | @(hyperlink "http://www.wescheme.org/openEditor?publicId=EHgrsZlYNX" "WeScheme")] preloaded on students' machines}
                              @item{Seating arrangements: ideally clusters of desks/tables}
                              @item{OPTIONAL: Hand out @(hyperlink "https://docs.google.com/document/d/134VD2NShK_VxDog4VG4lMm4jTbpxm2H2cSXqZbHwwSg/edit?usp=sharing" "Warmup activity sheet").}]
     #:prerequisites (list "Defining Functions")
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{Watch out for students confusing the rocket's height and time - many students will assume that the @code{rocket-height} function produces the time the rocket has been flying, rather than how high it is.}]}
                @pacing[#:type "challenge"]{@itemlist[@item{Can students make the rocket fly faster?}
                                                       @item{Can students make the rocket sink, instead of fly?}
                                                       @item{Can students make the rocket fly faster over time?}]}
                )
      ]{
        @points[ @point{@student{look in ya work book}}]}

       
@lesson/studteach[
     #:title "Let’s Create Instructions"
     #:duration "20 minutes"
     #:overview "It's been a little while since we looked at our code. Let's go over what we have already so that we remember what we're doing."
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[@item{Given a contract and purpose statement for a simple function, students will be able to write two Examples.}
                                      @item{Given two examples for a simple function, students will be able to identify the variable}
                                      @item{Given two examples for a simple function, students will be able to write the definition}]
     #:product-outcomes @itemlist[@item{Students will write functions to solve simple problems by using the Design Recipe}]
     #:exercises (list (make-exercise-locator "Practicing-the-Design-Recipe" "examples-same-contracts1")
                       (make-exercise-locator "Practicing-the-Design-Recipe" "examples-same-contracts2")
                       (make-exercise-locator "Practicing-the-Design-Recipe" "match-contracts-examples1")
                       (make-exercise-locator "Practicing-the-Design-Recipe" "match-contracts-examples2")
                       (make-exercise-locator/dr-assess "Practicing-the-Design-Recipe" "calc-pencils-assess-recipe" "Calculating Needed Pencils")
                       (make-exercise-locator/dr-assess "Practicing-the-Design-Recipe" "check-total-design-recipe-assess" "Totalling a Bill")
                       (make-exercise-locator/dr-assess "Practicing-the-Design-Recipe" "circle-area-design-recipe-assess" "Computing the Area of a Circle"))
     #:standards (list "A-SSE.1-2" "F-IF.1-3" "F-IF.4-6" "BS-DR.1" "BS-DR.2" "BS-DR.3")
     #:materials @itemlist[@item{Pens/pencils for the students, fresh whiteboard markers for teachers}
                            @item{Class poster (List of rules, language table, course calendar)}
                            @item{Language Table}
                            @item{Student @resource-link[#:path "workbook/StudentWorkbook.pdf" #:label "workbook"] folders with names on covers, and something to write with}]
     #:preparation @itemlist[@item{Write agenda on board}
                              @item{Display Class posters, Language Table, Design Recipe}
                              @item{Seating arrangements: ideally clusters of desks/tables}]
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{This is the first time they've seen abstraction over image functions, and students are likely to think that @code{red-square} needs to take in other arguments, such as "solid" and "red".}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}
                                                       @item{}
                                                       @item{}]}
                )
      ]{
        @points[@point{@student{The Design Recipe is a roadmap for defining functions, which programmers use to make sure the code they write does what they want it to do. Each step builds on the last, so any mistakes can be caught early in the process. This roadmap has a series of steps:
                                @itemlist[@item{Moving from a word problem to a Contract}
                                           @item{Writing Examples based on the contract}
                                           @item{Defining a function that matches the examples}]
                        Start out by practicing each of these steps, one at a time.
                        }
                        @teacher{}
                        }
                 @point{@student{@activity[#:forevidence (list "BS-DR.1&1&1" "F-IF.1-3&1&1" "F-IF.4-6&1&3" "A-SSE.1-2&1&1")]{
                                  For each of the following word problems, write down the Contract:
                                  @itemlist[@item{Define a function 'purple-star', that takes in the size of the star and produces an outlined, purple star of the given size.}
                                             @item{Define a function 'spot', that takes in a color and produces a solid circle of radius 50, filled in with that color}
                                             @item{To find the average of two numbers, they should be added together and divided by two. Define a function 'average', which takes in two numbers and produces their average}
                                             @item{A company logo is a word drawn in big, red letters, rotated some number of degrees. Define a function 'logo', that takes in a company name and a rotation, and produces a logo for that company}]
                                  Be sure to include a good @vocab{Name} for each function, and remember that the @vocab{Domain} and @vocab{Range} can only include @vocab{types} like Numbers, Images, Strings, etc.}}
                         @teacher{[@(hyperlink "https://www.youtube.com/watch?v=SL2zLs2P-mU" "Video")] If students come up with different Domains or Ranges for their functions, have them explain their thinking for each one. These conversations are an important part of this step!}
                        }
                 @point{@student{A Contract is the foundation for a function, which gives programmers just enough information to use them: the name of the function, the types of data it expects and the type of data it returns.
                                 @activity[#:forevidence (list "BS-DR.2&1&1" "8.F.1-3&1&3" "F-IF.1-3&1&4")]{
                                          Now that you've completed the Contracts for all four word problems, try to generate two Examples for each one.}}
                         @teacher{Challenge students to defend their Examples (their function name, the number of inputs, their types and the type of the returned value). Make sure that the two Examples for each function have @italic{different input values}! For each of these questions, students must be able to point to the specific part of their Contract as the justification for their Example.}}
                 @point{@student{Once you have two or more Examples, it should be easy to identify what has changed between them. In fact, the number of things that change should match the number of things in the function's Domain: if the Domain has a Number and a String in it, then those two values should be the things that differ between your Examples.
                                 @activity[#:forevidence (list "BS-DR.2&1&3" "BS-DR.2&1&3" "A-SSE.1-2&1&1" "A-SSE.1-2&1&2" "7.EE.3-4&1&4")]{
                                       Identify what has changed between these Examples, and use this information to define all four functions.}}
                         @teacher{Make sure students have chosen good variable names for their function definitions, and ask students to justify every part of the function body. The only acceptable answers should be "I copied this because it's the same in both Examples", or "I used a variable name because it differs between Examples."}}
                @point{@student{@activity[#:forevidence (list "BS-DR.3&1&1" "F-IF.1-3&1&1" "F-IF.4-6&1&3" "A-SSE.1-2&1&1")]{
                                       Turn to @worksheet-link[#:name "red-square"] in your workbook, and read the word problem carefully.
                                          @itemlist[@item{Circle the @vocab{Name} of the function, and underline what it takes in and what it produces.}
                                                       @item{Write the @vocab{Contract} for this function, using what you underlined to help you find the @vocab{Domain} and @vocab{Range}.}
                                                       @item{Underneath the Contract, write the @vocab{Purpose Statement} by summarizing what the function does in a single sentence}]}
                                }
                        @teacher{Challenge students to explain why this function does not need to know the color of the square, or whether or not it is solid. They main idea here is that the function already "knows" these things, so the only thing that is changing is the size of the square.
                                 Note that there are actually two easy solutions here: using the @code{square} function, or using @code{rectangle} with the same variable for width and height.}
                        }
                 @point{@student{Remember that the Contract and Purpose Statement can be used to write the Examples, even if a programmer isn't sure how to begin.
                                 @activity[#:forevidence (list "BS-DR.1&1&1" "BS-DR.2&1&1" "8.F.1-3&1&3" "F-IF.1-3&1&4")]{
                                           Using only the Contract and Purpose Statement, see if you can answer the following questions:
                                           @itemlist[@item{Every Example begins with the name of the function. Where could you find the name of the function?}
                                                      @item{Every Example has to include sample inputs. Where could you find out how many inputs this function needs, and what types they are?}
                                                      @item{Every Example has to include an expression for what the function should @italic{do} when given an input. Where could you look to find out what this function does?}
                                                      @item{Write two Examples on your paper, then circle and label what is changing between them.}]}}
                        @teacher{Make sure students realize that every answer can be found in the Contract or Purpose Statement. Suggestion: write these steps on the board, and draw arrows between them to highlight the process. The goal here is to get students into the habit of asking themselves these questions each time they write Examples, and then using their own work from the previous step to find the answers. NOTE: students can solve this using either @code{square} or @code{rectangle}. The latter requires them to use the same variable twice, which is a useful thought-exercise.}
                        }
                 @point{@student{Once the two Examples are written and the variable (or variables) are labeled, it becomes easy to define the function. 
                                 @activity[#:forevidence (list "BS-DR.3&1&1" "A-SSE.1-2&1&1" "A-SSE.1-2&1&2" "7.EE.3-4&1&4")]{
                                           Using the Contract, Purpose Statement and Examples, see if you can answer the following questions:
                                           @itemlist[@item{Every function definition begins with the name. Where did you write this already?}
                                                      @item{Every definition has to include variable names for the inputs. Where did you write these down?}
                                                      @item{Every definition should work exactly the way the Examples did. Where could you look to figure out what the function should @italic{do?}}
                                                      @item{Write the function definition on your paper.}]}}
                        @teacher{}
                        }
                 @point{@student{When typing in a function definition, be sure to type in all three parts: The Contract and Purpose Statement, 
                                 the Examples and the Definition. When "Run" is clicked, the computer will read the definition, test your 
                                 Examples to make sure it works correctly, and then add the definition to your language. Once added, you 
                                 can use the function as if it were built into the computer. 
                                 @activity[#:forevidence (list "BS-IDE&1&1")]{
                                             @editor-link[#:definitions-text "; red-square : Number -> Image
; draw a solid, red square using the given size
(EXAMPLE (red-square 42) (square 42 \"solid\" \"red\"))
(EXAMPLE (red-square 73) (square 73 \"solid\" \"red\"))
(define (red-square size) (square size \"solid\" \"red\"))"
                                                          "Test out this function by using it with various inputs."]
                                             }
                                 }
                        @teacher{}
                        }
                 @point{@student{Some functions take more than one input. The @code{red-square} function always makes solid red squares, with size being the only thing that varies. Suppose, however, we wanted the function to make red squares that could be @italic{either} solid or outline? This would mean that both the size and the style can vary, so a user might type @code{(red-square 50 "solid")} or @code{(red-square 50 "outline")}
                                 @activity[#:forevidence (list "BS-DR.1&1&1" "F-IF.1-3&1&1" "F-IF.4-6&1&3" "A-SSE.1-2&1&1")]{
                                           @itemlist[@item{How would that change the Domain of the function?}
                                                      @item{How would the Examples have to change?}
                                                      @item{How would the definition change?}]
                                            Change each part of the code you typed, to allow @code{red-square} to take in "solid" or "outline" as a second argument.}}
                        @teacher{}
                        }
                 @point{@student{The Design Recipe can be used for functions that take any number of inputs. As a simple example, take the following word problem:
                                 @activity[#:forevidence (list "8.F.1-3&1&3" "F-IF.1-3&1&4" "BS-DR.3&1&1" "A-SSE.1-2&1&1" "A-SSE.1-2&1&2" "7.EE.3-4&1&4")]{
                                           Turn to @worksheet-link[#:name "lawn-area"] in the workbook, and read the word problem carefully.
                                                   @itemlist[@item{Circle the @vocab{Name} of the function, and underline what it takes in and what it produces.}
                                                              @item{How many things does this function take as input? Are they Numbers? Strings? Images?}
                                                              @item{Write the @vocab{Contract} for this function, using what you underlined to help you find the @vocab{Domain} and @vocab{Range}.}
                                                              @item{Underneath the Contract, write the @vocab{Purpose Statement} by summarizing what the function does in a single sentence.}
                                                              @item{Write two Examples for this function, then circle and label what varies between them.}
                                                              @item{Write the Definition for this function.}]}
                                 }
                         @teacher{If time allows, pass out extra Design Recipe worksheets [@resource-link[#:path "DesignRecipeWorksheet.pdf" #:label "PDF"]], and have students practice with other word problems. Practice variations on red-square, involving two inputs changing while other parameters stay fixed.}
                        }
                 ]
         }
         
@lesson/studteach[
     #:title "Let's Create Instructions!"
     #:duration "20 minutes"
     #:overview ""
     #:learning-objectives @itemlist[]
     #:evidence-statements @itemlist[]
     #:product-outcomes @itemlist[]
     #:standards (list "A-SSE.1-2" "F-IF.1-3" "F-IF.4-6" "F-BF.3-4" "BS-DR.1" "BS-DR.2" "BS-DR.3")
     #:materials @itemlist[]
     #:preparation @itemlist[]
     #:prerequisites (list "Practicing the Design Recipe") 
     #:pacings (list 
                @pacing[#:type "remediation"]{@itemlist[@item{}]}
                @pacing[#:type "misconception"]{@itemlist[@item{}]}
                @pacing[#:type "challenge"]{@itemlist[@item{}]}
                )
      ]{@points[@point{@student{Now that we’ve implemented all the basic functionality of the game, we’re going to create instructions so that users know how to play!}}
                 @point{@student{Start by creating a new Billboard() named “instructions”}}
                 @point{@student{Import the gameinstructions.bmp file}}
                 @point{@student{Position your instructions billboard in the middle of the screen and close to the camera.}}
                 @point{@student{Next, we’re going to make it so that the game starts when the instructions are clicked on. We need an event to handle this so let’s add one}}
                 @point{@student{We’re going to use a mouseclick-listener}}
                 @point{@student{Next, since we want our listener to interact with the instructions, let’s set the mouseclick so that it makes the instructions dissappear}}
                 @point{@student{We can do this by dragging the instructions’ “setOpacity” procedure into the mouse click listener}}
                 @point{@student{Now test your code to make sure that it works.}}
                 @point{@student{Does anything happen that shouldn’t? Perhaps something like a timer starting even though we haven’t clicked on the instructions to start the game? What can we do about this?}}
                ]}
       
       
@lesson/studteach[
     #:title "Closing"
     #:duration "5 minutes"
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
        @points[@point{@student{In this unit, you started to see how functions are useful in writing animations: functions help produce information (such as the height of a rocket) that are used to create scenes in a game.  With the extra practice writing functions and using the Design Recipe, you are now ready to start writing functions that will move the elements within your own game.}
                        @teacher{@itemlist[@item{Have students volunteer what they learned in this lesson}
                                            @item{Reward behaviors that you value: teamwork, note-taking, engagement, etc}
                                            @item{Pass out exit slips, dismiss, clean up.}]}
                        }
                        ]}
}
