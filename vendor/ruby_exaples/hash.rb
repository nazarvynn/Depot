result = { 
	name: 'Jhon',
	age: 28,
	address: 'Lviv',
	phone: '(093) 222-07-02'
}
	

result[:email] = 'mail@mail.com'	#result.store(:email, 'mail@mail.com')

p result

p result.key?(:age)
p result.include?(:data)

p result.value?(28)						#// has_value?

p result.fetch(:email)					# get value

p result.values_at(:name, :address)		# get values as array

p '#select'
p result.select { |k, v| v.is_a? String }

p '#merge'
p result.merge!({ job: 'QC' })			# replase

result.merge({ job1: 'QC', job2: 'dev', job3: 'PM' }) { |key, h, j| p "key: #{key}; h: #{h}; j: #{j}" }

p result.delete :job 					# result.delete_if { |k, v| v.is_a? String }

p result.size
p result.empty?

p result.values
p result.keys

p '#flatten'
p result.flatten

p '#sort'
p result.sort
p '========='

#Hash itterators

p '#each_key'
result.each_key { |k| p k }
p '--------'

p '#each_value'
result.each_value { |v| p v }
p '--------'

p '#each_pair'
result.each_pair { |k, v| p "key: #{k}; value: #{v}" }