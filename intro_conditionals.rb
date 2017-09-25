####################### If Else basics ############################

x = 10
y = 5

if x ==  y
  puts 'they the same'
else
  puts 'Nope'
end

####################### Unless ############################

players = %w[Correa Carter Altuve]

unless players.empty?
  players.each { |player| puts player }
end

# OR one liner!!
players.each { |player| puts player } unless players.empty?

####################### Multiple ifs and elses ############################

x = 10
y = 100
z = 10

# If one condition is met, it will skip all over conditionals.
if x == y
  puts 'x is equal to y'
elsif x >= z
  puts 'x is greater than or equal to z'
elsif x < y
  puts 'x is probably less than y'
else
  puts 'w/e'
end

####################### Compound Conditionals ############################
x = 10
y = 100
z = 10

# If you want both statement to come out as true, you can use && == and
if x == y && x == z
  puts 'All is equal'
else
  puts 'FAILURE'
end

# Or you could...
if (x == 10 && x == z) && x != y
  puts 'All is met'
end
# What if you want to just use or? When only one will get met and will be true ||.
if x == y || x == z
  puts 'One of them are probably equal'
end

# Getting frisky; since left side is read first, it will return true
if (x == 10 && x == z) || x == y
  puts 'whaddddaaup'
end

# Remember*, Ruby follows PEMDAS religiously! 
