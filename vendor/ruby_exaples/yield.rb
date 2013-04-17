#yield examples

def example(a, b)
	p a
	# some code there

	yield

	# some code there
	p b
end



example('start', 'end') { p 'this is yield' }

def circle(n, a, b)
	n.times do |i|
		yield i, i + a * b
	end
end

circle(5, 2, 3) { |n, m| p "#{n}: #{m}" }