# Proc, a code block saved to a variable.
full_name = Proc.new { |first, last| first + " " + last }
# OR
full_name = Proc.new do |first, last|
  first + " " + last
end

# You can call it in two ways.
p full_name['Chris', 'Choi']
full_name.call('Chris', 'Choi')

# Lambdas are procs, they just expect a certain amount of arguements.
first_name = lambda { |first, last| first + " " + last }
# OR
first_name = ->(first, last) { first + " " + last}

first_name.call('Chris', 'Choi')
p first_name['Chris', 'Choi']

# Lambdas will actually count how many arguements are present and will throw a arg error
# Lambdas will actually run through the entire method

# Procs will continue to run the block with the given arguements, which is why it will give you a weird nil
# type of arguement when nothing is passed in.
# Procs will also return out of the method altogether, it will ignore the rest of the method calls.
