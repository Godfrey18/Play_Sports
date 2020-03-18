class Team < ApplicationRecord

has_many :user_teams
has_many :users, through: :user_teams
has_many :matches
has_many :away_teams,through: :matches
validates :team_name,presence:true,uniqueness:true

end