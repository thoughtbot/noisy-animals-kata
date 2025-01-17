# Noisy Animals Kata

Install noisy animals:

```
bundle install
```

Then see the tests demonstrate how noisy the animals are:

```
bundle exec rspec
```

## The exercise
The NoisyAnimal class has some poor code in it. Can you spot and fix some problems?

This small exercise is designed to think about and improve code.

Start by making a list of the problems you can identify in NoisyAnimal (it will be interesting to compare lists with someone else, but don't assume that there is one correct answer).

### Big Bang approach
1. Come up with a design that feels like it should address your list of problems and implement it
1. Make sure the tests pass

### Refactoring (one problem at a time)
1. Go back to the list of problems and take one
2. Address only that one problem
3. Make sure the tests pass
4. Choose another item on the list and go to step 3
5. Repeat until your list is addressed

### Self reflection
- Do you notice anything different between Big Bang and Refactoring approaches?
- Did your list of problems increase as you worked?
- Did some items on your list of problems go away, or change?
- Was one approach faster than the other?
- If you try both Big Bang and Refactoring approaches a few times (could be over days or weeks - revert between each attempt), how does your approach change over time?

## Bonus requirements
Try adding these animals:

A snake that makes the noise "slither"
A mouse that is so silent that it outputs only blank lines

Support the `true` or `false` values for the `is_loud` flag in both cases.

Is it easier to do this after or before you addressed the problems in the code that you identified earlier?

Don't forget to add tests for the new cases!
