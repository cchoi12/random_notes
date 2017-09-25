#################### While Loop ###########################

# When using while loops, you must incriment otherwise it will cause a
# infinite loop! HENCE! i + 1 = i or i += 1

i = 0

while i < 10
  puts 'Hey There'
  i += 1
end

# => Hey There
# Hey There
# Hey There
# Hey There
# Hey There
# Hey There
# Hey There
# Hey There
# Hey There
# Hey There
# => nil

#################### Each Loop ####################

array = [123, 456, 789, 1011, 1213, 1415, 1617]

array.each do |n|
  p n
end
# OR
array.each { |integer| p integer}

# =>
# 123
# 456
# 789
# 1011
# 1213
# 1415
# 1617
# => [123, 456, 789, 1011, 1213, 1415, 1617]

#################### For Loop ####################
# not really used often

for i in 0..42
  p i
end

#
# =>
# 0
# 1
# 2
# 3
# 4.....
