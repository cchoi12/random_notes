####################### Array basics ############################

# You can declare an array by assigning it to a variable.
x = [12, 14, 5, 6, 7, 8, 9, 10]

# OR, you can create one

y = Array.new
y[0] = 543 #=> means 543 will be at index 0
y[10] = 432 #=> means 432 will be at index 10
y #=> [555, nil, nil, nil, nil, nil, nil, nil, nil, nil, 444]
y.each { |i| puts i }


####################### Deleting in Arrays ############################

x = ['asdf', 1, 4, 6, 'rofl', 'stomp', 4, 'slap', 4, 6, 7]
# anything that matches parameter
x.delete(4) #=> ["asdf", 1, 6, "rofl", "stomp", "slap", 6, 7]
# deleting at index number
x.delete_at(2) #=> ["asdf", 1, "rofl", "stomp", "slap", 6, 7]

# deleting_if is having a if statement.
batting_averages = [0.24, 0.300, 0.180, 0.220, 0.250]
batting_averages.delete_if { |average| average < 0.25 } #=> [0.3, 0.25]

####################### Join in Arrays ############################

# join takes an argument and whatever it is it will use to seperate the
# elements in an array
teams = %w[astros yankees redskins mets cardinals dodgers]
teams.join(', ') #=> "astros, yankees, redskins, mets, cardinals, dodgers"

####################### Push & Pop in Arrays ############################
teams = %w[astros yankees redskins mets cardinals dodgers]
teams.push('marlins', 'red sox') #=> [astros yankees redskins mets cardinals dodgers marlins 'red sox']
teams.pop #=> 'red sox'
teams #=> [astros yankees redskins mets cardinals dodgers marlins]
