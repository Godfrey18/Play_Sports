class Team < ApplicationRecord
before_save { self.team_name = team_name.capitalize }
has_many :user_teams, dependent:  :destroy
has_many :users, through: :user_teams

has_many :matches
has_many :away_teams,through: :matches

validates :team_name,presence:true,uniqueness:true

end