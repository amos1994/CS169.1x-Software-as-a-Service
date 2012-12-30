class WrongNumberOfPlayersError < StandardError ; end
class NoSuchStrategyError < StandardError ; end

def rps_result(m1, m2)
	
	m1[1].upcase!
	m2[1].upcase!

	raise NoSuchStrategyError unless (m1[1] == "R" || m1[1] == "P" || m1[1] == "S") && (m2[1] == "R" || m2[1] == "P" || m2[1] == "S")

	if m1[1] == m2[1]
		return m1
	elsif m1[1].upcase == "R"
		if m2[1].upcase == "S"
			return m1
		elsif m2[1] == "P"
			return m2
		end
	elsif m1[1].upcase == "P"
		if m2[1].upcase == "R"
			return m1
		elsif m2[1] == "S"
			return m2
		end	
	elsif m1[1].upcase == "S"
		if m2[1].upcase == "P"
			return m1
		elsif m2[1] == "R"
			return m2
		end
	end
end

def rps_game_winner(game)
   	raise WrongNumberOfPlayersError unless game.length == 2
	return rps_result game[0], game[1]
end

def rps_tournament_winner(tournament)

 	return rps_game_winner tournament if is_a_game? tournament
 	return rps_tournament_winner [ rps_tournament_winner(tournament[0]) ,
                                 rps_tournament_winner(tournament[1]) ]
end

def is_a_game? (tournament)
	tournament.map do |set|
		return false unless set[0].kind_of?(String) and set[1].kind_of?(String)
	end
	return true
end	


