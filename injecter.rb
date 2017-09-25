# OLD SCHOOL WAY
total = 0

[3, 2, 3, 4, 2131, 214124, 213123, 321, 515, 7, 8].each do |i|
  total += i
end

# Inject method
[3, 2, 3, 4, 2131, 214124, 213123, 321, 515, 7, 8].inject(&:+)
# Inject takes an array and sums them up according to what method is being passed.
