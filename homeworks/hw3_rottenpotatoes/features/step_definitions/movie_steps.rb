# Add a declarative step here for populating the DB with movies.

Given /the following movies exist/ do |movies_table|
  movies_table.hashes.each do |movie|
	Movie.create(movie)
	# each returned element will be a hash whose key is the table header.
    # you should arrange to add that movie to the database here.
  end
#  flunk "Unimplemented"
end

# Make sure that one string (regexp) occurs before or after another one
#   on the same page

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
	assert (page.body.index(e1) < page.body.index(e2))
end

# Make it easier to express checking or unchecking several boxes at once
#  "When I uncheck the following ratings: PG, G, R"
#  "When I check the following ratings: G"

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
	rating_list.to_s.gsub(/\s/, "").split(",").each do |rating|
		step %Q{I #{uncheck.to_s}check "ratings_#{rating}"}
	end
  # HINT: use String#split to split up the rating_list, then
  #   iterate over the ratings and reuse the "When I check..." or
  #   "When I uncheck..." steps in lines 89-95 of web_steps.rb
end

And /the following ratings should (not )?be checked: (.*)/ do |unch, ratings|
	ratings.to_s.gsub(/\s/, "").split(",").each do |rating|
		step %Q{the "ratings_#{rating}" checkbox should #{unch}be checked}
	end
end

And /I should see movies with the ratings: (.*)/ do |ratings|
#	print ratings.to_s.gsub(/\s/, "").split(",")	
#	print Movie.all
	
	ratings.to_s.gsub(/\s/, "").split(",").each do |rating|
		assert page.has_xpath?('//table[@id=\'movies\']', :text => /^#{rating}$/)	
	end
end

Then /I should see all of the movies/ do
	num_movies = Movie.all.count
	num_rows = page.all("tbody/tr").count
	assert(num_rows == num_movies)

end

