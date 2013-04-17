
class Box
	@@data = {}
	
	def self.add(name, lambda)
		@@data[name] = lambda
	end

	def self.remove(name)
		@@data.delete name
	end

	def self.call(name, *args)
		@@data[name].call(*args)
	end
end


sumator = lambda { |x, y| p "#{x} + #{y} = #{x+y}" }

Box.add(:sum, sumator)
Box.call(:sum, 2, 4)