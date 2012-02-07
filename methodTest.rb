require 'test/unit'
# require 'classToTest' 
# auslagern funktioniert irgendwie nicht

def dec_to_rome(dec)
	result = ''
	(dec / 1000).times do
		result += 'M'
	end
	((dec % 1000) / 500).times do
		result += 'D'
	end
	((dec % 500) / 100).times do
		result += 'C'
	end
	((dec % 100) / 50).times do
		result += 'L'
	end
	((dec % 50) / 10).times do
		result += 'X'
	end
	((dec % 10) / 5).times do
		result += 'V'
	end
	((dec % 5) / 1).times do
		result += 'I'
	end
	return result
end

def romeToDez(rome)
	i = 0
	result = 0
	while(i < rome.size) do
		case rome[i]
		when 'M'
			result += 1000 
		when 'D'
			result += 500 
		when 'C'
			result += 100 
		when 'L'
			result += 50 
		when 'X'
			result += 10
		when 'V'
			result += 5 
		when 'I'
			result += 1
		end
		i += 1
	end
	return result
end

class TestMethods < Test::Unit::TestCase
   def test_dec_to_rome
    assert_equal(dec_to_rome(1984),'MDCCCCLXXXIIII')
   end
   def test_romeToDez
		assert_equal(1984,romeToDez('MDCCCCLXXXIIII'))
   end
end
