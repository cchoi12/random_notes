####################### Hash basics ############################

# How to set hash pairs, usually { key: value}
positions = { first_base: 'Chris Carter', second_base: 'Jose Altuve', short_stop: 'Carlos Correa' }

####################### Deleting in Hashes ############################

# How to delete hashes
people = { chris: 25, tiffany: 27, thomas: 19, rick: 5, christine: 20}
# you must do .delete(), the argument is the :key to delete.
people.delete(:thomas) #=> 19
people #=> { chris: 25, tiffany: 27, rick: 5, christine: 20}

####################### Iterating in Hashes ############################

# REFER TO nested_iterator.rb for nested hashes. You can iterate through both
# keys and values with |a, b| when .eaching.
people = { chris: 25, tiffany: 27, thomas: 19, rick: 5, christine: 20}

# what if we wanted to just grab the keys?
people.each_key do |key|
  puts key
end #=> just the :key
# and values?
people.each_value do |value|
  puts value
end #=> just the values

####################### Other Hash methods ############################

people = { chris: 25, tiffany: 27, thomas: 19, rick: 5, christine: 20}
# Lets add something!
# By putting the variable in people, we can then pass a [:key] = value to add a new value.
people[:krystal] = 50 #=> { chris: 25, tiffany: 27, thomas: 19, rick: 5, christine: 20, krystal: 50}

# How would we reverse the keys and values?
people_2 = people.invert #=> {25=>:chris, 27=>:tiffany, 19=>:thomas, 5=>:rick, 20=>:christine}
# However*, the values are symbols so you would have to convert them to strings if needed.

# Lets merge them together!
people.merge(people_2)
#=> {:chris=>25,
 # :tiffany=>27,
 # :thomas=>19,
 # :rick=>5,
 # :christine=>20,
 # 25=>:chris,
 # 27=>:tiffany,
 # 19=>:thomas,
 # 5=>:rick,
 # 20=>:christine}

# How do we convert the hash into an array?
people.to_a #=> [[:chris, 25], [:tiffany, 27], [:thomas, 19], [:rick, 5], [:christine, 20]]
# The array will be nested inside another array when converted.

# Easy methods for just values or keys?
people.keys #=> an array of only keys
people.values #=> an array of only values
