class Match < ApplicationRecord
  belongs_to :event
  belongs_to :home_team, :class_name=> 'Team', :foreign_key => "team_id"
  belongs_to :away_team, :class_name => 'Team', :foreign_key => "away_team_id"
end
