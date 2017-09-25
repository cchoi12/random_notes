#################### Map Method ####################

%w[1 23.0 0 4].map { |x| x.to_i }
# => [1 23 0 4]

# Use this instead
%w[1 23.0 0 4].map(&:to_i)
# => [1 23 0 4]

("a".."g").map { |i| i * 2 }
# => ["aa",
#  "bb",
#  "cc",
#  "dd",
#  "ee",
#  "ff",
#  "gg"]

Hash[[1, 2.1, 3, 4.5, 55.55, 0.99, 1.29].map { |x| [x, x.to_i] }]
# => { 1=>1, 2.1=>2, 3=>3, 4.5=>4, 55.55=>55, 0.99=>0, 1.29=>1 }

# In [x, x.to_i] x will be the original value, the x.to_i however will
# turn the x into a integer instead of a float.
# the Hash[] will take each element and split them into a key:value pair.


######################### More Mapping ########################

 Hash[%w[A dynamic open source programming language].map { |x| [x, x.length] }]
 # => {"A"=>1,
  # "dynamic"=>7,
  # "open"=>4,
  # "source"=>6,
  # "programming"=>11,
  # "language"=>8}

# method chaining and join method to take methods from a hash to make them
# URL-friendly since URLs cannot have spaces

{ a: 'Foo', b: 'Bar', latitude: '120.343', longitude: '33.332' }.map { |a, b| "#{a}=#{b}" }.join('&')
