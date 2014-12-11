Metaprogramming Challenge in Ruby
=================================

## Synopsis

A small challenge in metaprogramming in Ruby. A student can earn a badge. In this challenge I overwrite the `method_missing(name)` method and if someone calls a method like `.has_badge_name?` then this will check for the badge_name and return `true` or `false`.

## Technologies Used

- Ruby
- RSpec

## Favourite Code Snippet

~~~
 if (name.to_s.match(/^has_.+?\?/))
      define_badge_check_method(name)
      self.send(name)
~~~

This is the code that is checking whether the undefined method which has been called is of the format has_SOMETHING?. If so, then it runs the define_badge-check_method.

## Still to complete/refactor

- [ ] With better knowledge of Regular Expressions, I think I could use a better method to get the badge name rather than using [4..-2]

## Takeaway

I enjoyed exploring the Ruby language a little deeper than previously and can see the advantages of this type of metaprogramming. It reduces the need to write methods for each scenario, and in this case, if you added more badges to the list, then you wouldn't need to create new methods to check for their existence.