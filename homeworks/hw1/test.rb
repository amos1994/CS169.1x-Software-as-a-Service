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

#print pvalue = {"hello"=> "world"}.palindrome?

#(pvalue.is_a?(TrueClass) || pvalue.is_a?(FalseClass)).palindrome?

#print val = Array.new(1,9).respond_to?('reverse')

print [1,2,3].palindrome?
