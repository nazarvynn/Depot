
#Arrays

p '#each'
[1, 2, 3, 4].each { |i| p "item: #{i}" }

p '--------'
(1..3).each { |i| p "index: #{i}" }

p '#each_with_index'
(1...5).each_with_index { |value, index| p "value: #{value}, index: #{index}" }


#each_slice
p '#each_slice'
(1..10).each_slice(4) { |i| p i }


#each_cons
p '#each_cons'
(1..7).each_cons(5) { |i| p i }


#map // collect
p '#map // collect'
[2, 3, 5].map { |i| p i+1 }


#select
p '#select (odds)'
p (1..6).select { |i| i%2==1 }


#reject
p '#reject (paired)'
p (1..6).reject { |i| i%2==1 }


#inject
p '#inject'
sum = (1..6).inject { |sum, i| sum + i }
p "sum 1..6 = #{sum}"

multiplication = (1..6).inject(10) { |sum, i| sum * i }
p "multiplication 10 * 1..6 = #{multiplication}"

arr = [2, 4, 1, 7, 0, 14, 4, -7]
max = arr.inject { |max, i| max > i ? max : i }
p "arr#{arr}, max = #{max}"


#zip
p '#zip'
(1..5).zip('a'..'d') { |x,y| p x,y }