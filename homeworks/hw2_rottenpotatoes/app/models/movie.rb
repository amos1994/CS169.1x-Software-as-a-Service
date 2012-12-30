class Movie < ActiveRecord::Base
	def self.rating_list
		%w(G PG PG-13 R)
	end
end
