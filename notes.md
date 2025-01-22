## Self reflection before you start

> What problems can you identify if you think for 5 minutes before you start changing code?

- [DESIGN] I don't like positional boolean args (prefer keyword args)
- [DESIGN] make_noise is VERY CONFUSING (too many conditionals)
- [DESIGN] Related logic is not grouped together (make_bird_noise appears twice for no reason)
- [PERF] mammal_noise instantiates a new hash every time it's called. Move to a constant + memoized method?
- [DESIGN] no API for is_mammal

> What sort of changes do you think will address these problems?

- A long but flat conditional is better than a short but deep conditional
- Possibly extracting subclasses for each animal type, but might be overkill. Case statement might be enough.

## Self reflection after trying to make changes

> Does your starting list of problems still feel complete?

No. There were problems that I could only see after cleaning up the code a bit.

> If you rewrote the list now, would it be different? How and why?

Addressing things like that mammals and birds are basically behaving the same way.

> Does your current assessment of the NoisyAnimal problems feel similar or different to other code you read or work with?

Sort of. Not all projects are _this_ messy, but the techniques I used to clean it up are similar.

> Have you found yourself trying something and then realising it wouldn't work? How easy was it to get back to something that did work?

A little bit. Luckily the tests were there to help me. I also made commits, so it was very easy to revert.

> Do you make git commits as you make your changes?

Yes

> How often do you run the tests? What if you could only run them once every 10 minutes? Or 30 minutes?

On every change.

> What would it take to run the tests every time you changed a line of `noisy_animal.rb`?

A Guardfile =)

> Is it easier to add the new animals before or after addressing some of the problems?

Definitely after. I didn't even read the new requirements until I had cleaned up the code a bit.
