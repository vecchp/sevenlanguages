# Find
* Find out how to access files with and without code blocks. What is the benefit of the code block?

With code blocks you can express a single thought.  Without it allows you to do more complex behaviors.  As your thought becomes
more complex it is better to use multiple code blocks or lines. 

More importantly code blocks are similar to with statements in
Python (context managers) for handling resources ie. open and closing file handlers.

* How would you translate a has to an array?  Can you translate
arrays to hashes?

Hash to an array would take the hash value as an index location.
As the hashing algorithm is destructive, you lose information going from a key to an index.  While you can still use
integer values as the hash it is most likely not the 
use case desired.

* Can you iterate through a hash?

Hashes are typically backed by arrays which means you should
be able to iterate through it. Also called associative arrays, they are similar to Arrays, but where an Array uses integers as its index, a Hash allows you to use any object type.

Hashes enumerate their values in the order that the corresponding keys were inserted.

* You can use Ruby's arrays as stacks.  What other common data
structures do arrays support?

Singly linked list, doubly linked lists, queue

Like in python the ruby array supports push, pop, and iterate