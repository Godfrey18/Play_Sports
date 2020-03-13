class Team < ApplicationRecord
	has_many :team_players
	has_many :users, through: :team_players

validates :team_name,presence:true,uniqueness:true
end