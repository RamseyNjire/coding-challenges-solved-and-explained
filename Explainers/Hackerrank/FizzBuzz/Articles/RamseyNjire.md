# A Simple Explanation of The FizzBuzz Algorithm

FizzBuzz, if you've read the problem description, is about printing the numbers from 1 to 100, printing "Fizz" whenever 3 and its multiples are encountered, "Buzz" whenever 5 and its multiples are encountered, and "FizzBuzz" whenever numbers that are multiples of both 3 and 5 are encountered.

The trick with solving this problem lies in knowing what to check for first. Should you first check if a number is a multiple of 3, 5, or 3 and 5?

Let's go through it step by step:

- You need some way to count the numbers from 1 to 100. My solution is implemented in Ruby, so I used the #times method. Specifically, this method is a method of the `Integer` class, and is implemented by calling the #times method on a given number. You can see [here](./Solutions/FizzBuzz/RamseyNjire/RamseyNjire.rb) that I call `100.times` then pass it a code block, where I specify some actions. Don't worry about the terminology. It's not important here. The point is that I've found a way to count from 1 to 100. There are numerous ways to implement this, including `for` loops, `while` loops, and even `range`, all of which exist in Ruby and other languages.

- Once you've set up some kind of counter, you need to define some code that checks the number at every count. If the right condition is met, it will print either of 'Fizz', 'Buzz', and 'FizzBuzz'. Otherwise, it will print the number itself.

- This is where the trick lies. If you check whether the number is a multiple of 3 or 5 first, like the pseudocode below...

```
for numbers from 1 to 100
  if number is divisible by 3
    print "Fizz"
  else if number if divisible by 5
    print "Buzz"
  else if number is divisible by both 3 and 5
    print "FizzBuzz"
  else
    print number
  end
end

```

- The above will work until it reaches 15. Since 15 will meet the first condition (it is divisible by 3), "Fizz" will be printed. But we don't want that. 15 is divisible by both 3 and 5, so what we really want printed is "FizzBuzz". In fact, we'll run into this sort of problem every time we encounter a number that is a multiple of both 3 and 5.

- The above if statements are short circuiting. That is to say that the minute a condition passes, the code executes and the rest of the 'else if' statements aren't checked. So if we want to make sure "FizzBuzz" is printed when expected, we have to check for its condition first.

```

for numbers from 1 to 100
  if number is divisible by both 3 and 5
    print "FizzBuzz"
  else if number if divisible by 3
    print "Fizz"
  else if number is divisible by 3
    print "Buzz"
  else
    print number
  end
end

```

- The above code will now work. Everytime it comes across a number that is divisible by both 3 and 5, that is the first thing that is checked and it will print "FizzBuzz". On the other occasions, this condition will fail and, instead, either of the other 3 (divisibility by 3, divisibility by 5, or neither) will pass.

- This can be simplified even further. Instead of checking for divisibility by both 3 and 5, one can check for divisibility by the least common multiple of 3 and 5: 15. Any number that is divisible by both 3 and 5 is also divisible by 15.

```

for numbers from 1 to 100
  if number is divisible by 15
    print "FizzBuzz"
  else if number if divisible by 3
    print "Fizz"
  else if number is divisible by 3
    print "Buzz"
  else
    print number
  end
end

```

This general algorithm can now be adapted to just about any high level language. In ruby, the solution is:

```Ruby

100.times do |i|
  i+=1
  if i%15==0
      puts "FizzBuzz"
  elsif i%5==0
      puts "Buzz"
  elsif i%3==0
      puts "Fizz"
  else
      puts i
  end
end

```

- `100.times` is telling the interpreter to count from 0 to 99. The `do` is the start of a code block, in which we tell the interpreter what to do at each count.

- At each count, we assign a variable `i` to the current count. Since the interpreter starts counting from 0, we add 1 to `i` via `i+=1`. That way, 0-99 becomes 1-100. Then we check if `i` is divisible by each of 15, 3, and 5 using the `modulus` operator. `modulus` returns `0` when a number is divisible by another, so that's what we check for.

- We tell the interpreter what to print in either case. The `puts` method prints its argument plus a newline.

Running the above code should give us the desired results.
