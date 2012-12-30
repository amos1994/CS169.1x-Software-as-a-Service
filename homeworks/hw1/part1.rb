#cs169 hw1 part1
#Ryan Newton
#100412


def palindrome?(str)
	if str.downcase.gsub(/[()'"!.,;:\? -]/, '').reverse == str.downcase.gsub(/[()'"!.,;:\? -]/, '')
		return true
	else
		return false
	end
end

def count_words(str)
	counter = Hash.new(0)
	str.downcase.gsub(/[()'"!.,;:?\-]/, '').split.map do |word|
		counter[word] = str.downcase.scan(/\b#{word}\b/).size
	end
	print(counter)
	return counter
end

