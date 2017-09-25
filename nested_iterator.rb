#################### Nested hashes Loop ###########################
teams = {
  'Houston Astros': {
    'first base': 'Chris Carter',
    'second base': 'Jose Altuve',
    'shortstop': 'Carlos Correa'
  },
  'Texas Rangers': {
    'first base': 'Prince Fielder',
    'second base': 'R. Odor',
    'shortstop': 'Elvis Andrus'
  }
}

# For |team, players|, the iterator will first grab team and then go through
# the nested attributes in team as players. We then can iterate through players.
teams.each do |team, players|
  puts team
  players.each do |position, player|
    puts "#{player} starts at #{position}"
  end
end

# =>
# Houston Astros
# Chris Carter starts at first base
# Jose Altuve starts at second base
# Carlos Correa starts at shortstop
# Texas Rangers
# Prince Fielder starts at first base
# R. Odor starts at second base
# Elvis Andrus starts at shortstop
