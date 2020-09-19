# A Short Introduction to the Array Data Structure

> This isn't an original explanation, but is rather based on my understanding of this [video](https://www.coursera.org/lecture/data-structures/arrays-OsBSF) on Coursera. I found it to be a very good introduction to the topic, and I thought I might summarize it to make sure I have understood the subject matter. Maybe it might be useful for someone else out there.


Arrays are ubiquitous in computer science, and it's important to get a basic understanding of how the array works as a data structure. It will form a foundation for understanding the linked list in the next article.

An array is defined as a contiguous area of memory consisting of equal sized elements indexed by contiguous integers. The array below shows this visually:

![Array](ArrayVisualization1.svg)

Let's unpack that statement and see what it means...

- **"contiguous area of memory"** : That means it occupies a continuous area of memory, with the memory locations in sequence.

- **"equal sized elements"** : That means each element is allocated the same size of memory, whatever that may be.

- **"indexed by contiguous integers"** : That means that the references to the elements of the array are a sequential set of integers. In the above example, we start with `1` and then count up from there. Many of the most popular programming languages start counting from `0`, and there are some that allow you to choose what number to start from. From my understanding, it doesn't matter. You could start at negative `-533` if you wanted. The important thing is that you have sequential integers; something like `-533, -530, -243` is a big no-no.


The interesting thing about an array is that it offers constant time access. That's constant time access to both read and write from the array. How is this possible? Well, every time you want to access an element, all it takes is a simple arithmetic calculation, which means it will take the same amount of time to execute no matter how large the array or what element you're trying to access. 

So how is this possible?


