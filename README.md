# controlhub exercise

Simple API endpoint written using Ruby and Sinatra to receive a Fibonacci sequence value given its index number.

This is my first time using Sinatra. It's pretty friendly!

First thing I did was to decide on how I was going to implement the fibonnaci function. Honestly, it's been a while since I've written a fibonacci function, but I remembered seeing a formula for this use case, so I looked it up and implemented the one I found here:
http://www.maths.surrey.ac.uk/hosted-sites/R.Knott/Fibonacci/fibFormula.html

I guess a weak point here is that this formula actually gives us a really close approximation. At first I thought a formula would be better for speed, but now I wonder if the rounding might not be accurate at really big indexes.

After looking up how to set path variables in Sinatra, I went ahead and wrote a very primitive cache function to avoid calculation for known values.

To make this better, first I would need to setup a test to check accuracy for big numbers. Then to compare speed with a more traiditional loop or recursion based solution.
