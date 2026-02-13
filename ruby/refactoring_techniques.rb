# Sometimes we can rearrange code without changing the result
#
# A different arrangement might make something clearer the reader
# (including us)
#
# change the order of operands in an && expression (if a and b
# have no side effects)

if a && b =>
if b && a

# change the order of statements with no side effects
a = expression1_with_no_side_effects
b = expression2_with_no_side_effects
=>
b = expression2_with_no_side_effects
a = expression1_with_no_side_effects

# reduce nesting by combining if statements

if outer_conditional
  if inner_conditional
    do_stuff
  end
end
=>
if outer_conditional && inner_conditional
  do_stuff
end

# swap order of conditional branches

if a == 'x'
elsif a == 'y'
end
=>
if a == 'y'
elsif a == 'x'
end

# combine sequential conditionals if they can't both execute

if a && b
end
if a && !b
end
=>
if a && b
elsif a && !b
end

# move code out of conditional if it appears in all branches

if a
  do_something()
  do_something_else_a()
else
  do_something()
  do_something_else_not_a()
end
=>
do_something()
if a
  do_something_else_a()
else
  do_something_else_b()
end
