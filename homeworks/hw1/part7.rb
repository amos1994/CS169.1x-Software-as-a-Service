class CartesianProduct
	include Enumerable
	def initialize (sequence1, sequence2)
		@seq1 = sequence1
		@seq2 = sequence2
		#@product = Array.new(@seq1.length * @seq2.length){[]}
	
	end
	
	def each
		product = Array.new{[]}	
		@seq1.each do |s1|
			@seq2.each do |s2|
				product.push [s1, s2]
			end				
		end	
		

		product.map do |result|	
			yield result
		end

	end

	def print_thing
		print @product		
		#print @seq1.length
		#print @seq2.length
	end

	

	attr_accessor :seq1, :seq2

  # YOUR CODE HERE
end


c = CartesianProduct.new([:a,:b,:c], [4,5])

c.each { |elt| puts elt.inspect }

