# NOT EFFICIENT!!! You would be limited from p_1 - p_3 only
def roster p_1, p_2, p_3
  puts p_1
  puts p_2
  puts p_3
end

roster 'Chris', 'Kyle', 'Kevin'

#################### Splat Operator ###########################

def roster *players
  puts players
end

roster 'Chris', 'Kyle', 'Kevin', 'Eric', 'Anthony', 'Marcus'
=> ['Chris', 'Kyle', 'Kevin', 'Eric', 'Anthony', 'Marcus']

################### Double Splat Argument ######################
# double splat or ** will take a hash value {key : value}

def roster **players_with_positions
  players_with_positions.each { |player, position| puts "Player: #{player}" ; puts "Position: #{position}"; puts '\n' }
end

data = {
  'Chris': '1st base',
  'Eric': 'Short Stop',
  'Greg': 'Pitcher',
  'Ava': 'Catcher',
  'Marcus': '3rd base'
}

roster data

################## Optional Arguments ###########################
# Use Hashes
# when creating optional values, you must identify the right keys otherwise
# it will return nil

def invoice options={}
  puts options[:company]
  puts options[:total]
  puts options[:etc]
  puts options[:tax]
end

invoice company: 'Amazon', total: 100_000, etc: 'Prime', tax: 10
