def combine_anagrams(words)

#	creates an array of all of the scrambled possibilities
	sorted = Array.new
	words.map do |word|
		sorted.push(word.downcase.chars.sort.join) unless sorted.include? word.downcase.chars.sort.join
	end

	
#	puts the words into the appropriate indexes	
	anagram_array = Array.new(sorted.length){[]}
	words.map do |word|
		anagram_array[sorted.index(word.downcase.chars.sort.join)].push word
	end


	return anagram_array
end

