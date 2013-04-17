module App
	class Member
		def initialize(name)
			@name = name
		end

		def say_heelo
			p "Hello #{@name.capitalize}!"
		end
	end

	class Admin < Member
		def access
			p 'You have Amin access rights.'
		end
	end

	class Guest < Member
		def access
			p 'Hello You are Guest. Wellcome!'
		end
	end

	class User
		def initialize(name, pass = nil)
			pass == '0987' ? Admin.new(name) : Guest.new(name)
		end
	end

	user1 = User.new('Andy')
	user1.access

	user2 = User.new('Smith', '0987')
	user2.access
end
