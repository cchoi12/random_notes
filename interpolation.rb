puts "Name an animal"
animal = gets.chomp

puts "Name a noun"
noun = gets.chomp

p "The quick brown #{animal} jumped over the lazy #{noun}"

#REMEMBEr, double quotes will do a string interpolation, single quotes will not
