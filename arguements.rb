# def full_name first, last
#   first + ' ' + last
# end
#
# puts full_name 'Chris', 'Choi'
#

#################### Named Arguments ####################
# def print_address city:, state:, zip:
#   puts city
#   puts state
#   puts zip
# end
#
# print_address city: 'Montrose', state: 'California', zip: 91020
# => Montrose
# California
# 91020
# nil

# def sms_generator api_key:, num:, msg:, locale:
  # magic sms stuff here...
# end

# order does not matter when you make them named arguements.
# sms_generator api_key: '939213912', num: 555_555_5555, msg: 'Whaddup my dude', locale: 'USA'

#################### Default Arguments ####################

def stream_movie title:, language: 'English'
  puts title
  puts language
end

stream_movie title: 'Mothers Father'
# if you add default arguments, it will automatically populate
# BUT if you add one to when you call the method, it will override the default
stream_movie title: 'Mothers Father FR', language: 'French'
