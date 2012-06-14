#lang curr/lib

@title{Distance}
@worksheet{
Write a function distance,which takes FOUR inputs:
@itemlist[
@item{px: The x-coordinate of the player}
@item{py: The y-coordinate of the player}
@item{cx: The x-coordinate of another game character}
@item{cy: The y-coordinate of another game character}
]
It should return the distance between the two, using the Distance formula:
 Distance = ((line-length px cx)^2 + (line-length py cy)^2 )
    
    1.  Contract+ Purpose Statement
    ;@fill-in-the-blank[#:id "name"]:@fill-in-the-blank[#:id "Domain"] -> @fill-in-the-blank[#:id "Range"]
    ;@fill-in-the-blank[#:id "what does the function do?"]
    
    2. Give Examples
    Write two examples of your function in action
    @fill-in-the-blank[#:id "Example 1"]
    @fill-in-the-blank[#:id "Example 2"]
    
    3. Function Header
    (define (@fill-in-the-blank[#:id "function name"] @fill-in-the-blank[#:id "variable names"])
    @fill-in-the-blank[#:id "...and the computer does this"])}