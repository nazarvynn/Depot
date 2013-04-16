#require 'singleton'

# Explanation Class variable VS Instance variable
module ClassVariable

	class ClassVariableTester
		@@class_count = 0
		def initialize
			@instance_count = 0
		end

		def increment
			@@class_count += 1
			@instance_count += 1
		end

		def report
			"class_count = #{@@class_count}; instance_count = #{@instance_count}."
		end

		def self.static_method
			p 'This is static methid and can be created withot instance.'
		end
	end

	c1 = ClassVariableTester.new
	c1.increment
	c1.increment
	
	p c1.report
	p '--------'

	c2 = ClassVariableTester.new
	c2.increment
	
	p c2.report
	p '--------'
	
	ClassVariableTester.static_method
	p '--------'; p
end

module SimpleSingelton
	class SimpleLooger
		#include Singelton
		#@@instance = SimpleLooger.new

		#attr_accessor :level

		ERROR = 0
		WARNING = 0
		INFO = 0

		@@log = {
			ERROR: [],
			WARNING: [],
			INFO: []
		}

		@@level = WARNING

		def self.error(msg)
			@@log[:ERROR] << msg
		end

		def self.warning(msg)
			@@log[:WARNING] << msg if @@level >= WARNING
		end

		def self.info(msg)
			@@log[:INFO] << msg if @@level >= INFO
		end

		def self.report
			p @@log
		end

		def self.level
			@@level
		end

		def self.level=(new_level)
			@@level = new_level
		end
	end

	SimpleLooger.level = SimpleLooger::INFO

	SimpleLooger.info('some notification')
	SimpleLooger.warning('failure')
	SimpleLooger.error('crash')
	SimpleLooger.warning('failure 2 - critical')
	SimpleLooger.info('reading...')
	SimpleLooger.info('still reading...')
	SimpleLooger.info('end.')

	SimpleLooger.report

end




