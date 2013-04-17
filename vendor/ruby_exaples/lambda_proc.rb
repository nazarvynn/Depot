
#Proc
p '#Proc'
add = Proc.new { |x, y| x + y }

sum = add.call(2, 5)
p "2 + 5 = #{sum}"
p '---------'

#Lambda
p '#Lambda'
multiplication = lambda { |x, y| x * y }

multip = multiplication.call(2, 4)
p "2 * 4 = #{multip}"

m = ->(x) { x + 2 }
p m.call(8)