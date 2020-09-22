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

So how is this possible? Well, accessing any element involves the following mathematical operation:

![ConstantTimeAccess](ConstantTimeAccess.svg)


- The variable `ArrayAddress` stands for the address in memory that begins with.
- `ElementSize` stands for the memory size of each element. The only reason why this equation works, by the way, is that each element is allocated the same amount of memory, hence our "equal sized elements" constraint in our definition of an array.
- `i` is the index of interest. If we're trying to access the third element of the array, `i` might be either **3** or **2**, depending on whether we're using zero-based or one-based indexing.
- `FirstIndex` is the first index of the array. If we're using zero-based indexing, that's **0**. If we're using one-based indexing it's **1**.

So to access an element, we only need to know its index, the memory location where the array starts, and the size of each element. This makes the array a powerful construct, since it means we can access any element with no more than a simple arithmetic calculation.

Say, for example, that we have a 2D array and we want to access a particular element...

![2DArray](2DArray.svg)

In this case, we want to access the 4th element in the third row, denoted by the coordinates `(3,4)` in this case. The first element in such an arrangement would have the coordinates `(1,1)`.

So how do we access the address of the 4th element in the third row?

According to our formula above, we would first need to find the index of our element. Since it is in the third row, it is ahead of 2 rows. Each row has 6 elements so that's `(3-1) * 6`, or 12 elements.

Also, it is the 4th element of the third row, so we add another 4 to 12 to find that its index is 16.

Now, applying our formula...

```
element_address = array_address + (i - first_index)

element_address = array_address + (16 - 1)

```

Of course we're assuming an array where the first index is 1, though it could also just as easily be zero.

