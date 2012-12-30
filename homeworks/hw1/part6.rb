class Numeric
  @@currencies = {'yen' => 0.013, 'euro' => 1.292, 'rupee' => 0.019, 'dollar' => 1.0}
	attr_accessor :yen, :euro, :rupee, :dollar
	
	def in(currency)
		#takes the parameter, turns it into a string, gets rid of plural values, and multiplies it appropriately times the 'self' dollar value
		return self * (1 / @@currencies[currency.to_s().to_s.gsub( /s$/, '')])
	end
	

	def yen
		return self * @@currencies['yen']
	end
	def euro	
		return self * @@currencies['euro']
	end
	def rupee
		return self * @@currencies['rupee']
	end
	def dollar
		return self * @@currencies['dollar']	
	end


	def method_missing(method_id)
		print method_id
		singular_currency = method_id.to_s.gsub( /s$/, '')
		if @@currencies.has_key?(singular_currency)
			self * @@currencies[singular_currency]
		elsif @@currencies.has_key?(method_id)
 			self * @@currencies[method_id]
			super
		end
	end


end

class String
	def palindrome?
		if self.downcase.gsub(/[^a-z]/, '').reverse == self.downcase.gsub(/[^a-z]/, '')
			return true
		else
			return false
		end
	end
end

module Enumerable
	def palindrome?
		arr = Array.new{[]}
		self.map do |item|
			arr.push item
		end

		print arr
		print arr.reverse
	#	if self.respond_to?('reverse')
		if arr.reverse == arr
			return true
		else 
			return false
		end
#		end
	end
end


#print 5.yen.in(:dollars)
#print "A man, a plan, a canal -- Pdanama".palindrome?
#print pvalue = {"hello"=> "world"}.palindrome?
#print ["a", "b", "c", "b", "a"].palindrome?
#print test = ValidPalindromeTest.new(1,9)
#test.palindrome?

#print true.class



