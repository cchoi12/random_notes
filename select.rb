#################### Select Method ####################
# Given an array of integers
# We only want to grab the integers that are even
(1..32).select do |a|
  a.even?
end
#OR
(1..32).select { |a| a.even? }
#OR
(1..32).select(&:even?)

# Given an array of strings
# Return only the words that are over 5 letters
array = %w[The quickest brown fox jumped over the lazy doggy]
# We cannot do the &:argument because this is a comparison.
array.select { |a| a.length > 5 }

# Given an array of strings
# Return all of the vowels
%w[a b c d e f g].select { |vowel| vowel =~ /[aeiou]/ }
# to access regex, we do =~ the '~' starts this pattern recognition.
# We then have to put in a /REGEX/ to have a target
