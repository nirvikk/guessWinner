class Winner < ActiveRecord::Base
		def self.who_is_winner?(winners)
			current_winner = winners.first
			winners.each do |winner|
				if winner.vote > current_winner.vote
					current_winner = winner
				end
			end
			current_winner
		end

		def self.by_vote_difference?(winners)
			winners_hash = {}
			winners.each do |winner|
				winners_hash["#{winner.name}"] = winner.vote
			end
			vote_list =  winners_hash.values.sort
			win_number = vote_list[-1] - vote_list[-2]
			
		end
end