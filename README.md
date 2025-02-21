# Noisy Animals Kata
This small exercise is designed to help thinking about and improve code.

## Context
The Noisy Animal code outputs noise for several animals and birds. Client code can request a noise that is loud or not. [Hadedahs](https://www.youtube.com/results?search_query=hadedah+noise) do not generate quiet noises.

## Self reflection before you start
Looking at [the code for your language of choice](#the-code):

- What domain (related to animals and noise) concepts can you identify and what are the important differences between these?
- What problems can you identify if you think for 5 minutes before you start changing code?
- What sort of changes do you think will address these problems?

## Try cleaning it up!
It's normal to feel like this code hides some important concepts. It is pretty bad. Are you able to fix some of the problems you identified?

## New requirements are so great!
When/If you're feeling comfortable with the code, try adding these animals:

- A snake that makes the noise "hiss" when it is loud and "slither" when it is not loud
- A mouse that is so silent that it outputs exactly one blank line, whether loud or quiet

## The code
Language-specific instructions are here:

- [Ruby](/ruby)
- [Javascript](/javascript)

## Self reflection after trying to make changes
- Does your starting list of problems still feel complete?
- If you rewrote the list now, would it be different? How and why?
- Does your current assessment of the NoisyAnimal problems feel similar or different to other code you read or work with?
- Have you found yourself trying something and then realising it wouldn't work? How easy was it to get back to something that did work?
- Do you make git commits as you make your changes?
- How often do you run the tests? What if you could only run them once every 10 minutes? Or 30 minutes?
- What would it take to run the tests every time you changed a line of code?
- Is it easier to add the new animals before or after addressing some of the problems?
- After introducing the new animals is the code going to be easier or harder to change in future than it was before you started?
- How do you think that code might start out well and end up as confusing as this over time?

## Hints
These are some ideas that the authors apply regularly in their professional work and were helpful in attempting this exercise. Yes, it was easier to create the problem code than to improve it.

- We learn as we code. It is very unlikely that every change is a good one and so it is important to be able to keep the good and discard the bad.
- Small changes are fast to make and can be accepted or discarded easily. Big changes make it hard to see which parts are an improvement and which are regressions.
- Every small change is verified by running the tests.
- It's easier to change logic correctly when all of the code involved is close together. It's possible to move lines of code around as long as it remains identical in behaviour
- It's always easier to change a piece of logic in one place than in multiple places. It's possible to change abstractions (loops, conditions, methods, etc) to reveal that code that seemed different is actually identical and can be combined
- In this exercise, logically equivalent or redundant conditionals are particularly common

## Ideas from the refactoring community
The author is a big fan of Sandi Metz and Katrina Owen's work, particularly [99 Bottles of OOP](https://sandimetz.com/99bottles). The book works through a longer - but similar - exercise to this. Here are some ideas that are discussed in that book (not only there, but it's a fantastic starting point).

### Making change easier by improving bad code
When it's not possible to see how to implement a change, addressing a problem in the code will make it easier to think about and helps with understanding the domain.

### Flocking Rules
A process for iteratively building good abstractions:

 1. Select the things that are most alike.
 2. Find the smallest difference between them.
 3. Make the simplest change that will remove that difference.

### Conditionals: separate the things that change from the things that stay the same
When faced with a long `if` statement, what code is in common between every branch, and what code is unique? It's possible to remove the code that is in common to all branches of the conditional and replace it just once before or after the conditional. The result will be much easier to read.

### Duplication can be better than the wrong abstraction
If there are many clear examples supporting the introduction of an abstraction (loop, conditional, class etc), it makes sense to introduce it. If there are clear counterexamples it is better to leave the duplication as is. A better abstraction may be revealed later.
