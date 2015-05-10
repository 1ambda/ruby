a = [5, 4, 3, 1]

p a
p a.sort

p 'begin' <=> 'end'

p 'same' <=> 'same'

p a.member?(3)
p a.select { |i| i % 2 == 0} # filter
p a.collect { |i| i * 2 } # map

p a.any? { |i| i > 6 }
p a.all? { |i| i > 0 }

p a.inject(0) { |sum, i| sum + i} # fold


