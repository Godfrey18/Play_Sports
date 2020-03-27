class Match < ApplicationRecord
  belongs_to :event
  
  belongs_to :home_team, :class_name=> 'Team', :foreign_key => "team_id"
  belongs_to :away_team, :class_name => 'Team', :foreign_key => "away_team_id"

  after_create :create_inverse, unless: :has_inverse?
  after_destroy :destroy_inverses, if: :has_inverse?

  def create_inverse
    self.class.create(inverse_match_options)
  end

  def destroy_inverses
    inverses.destroy_all
  end

  def has_inverse?
    self.class.exists?(inverse_match_options)
  end

  def inverses
    self.class.where(inverse_match_options)
  end

  def inverse_match_options
    { away_team_id: team_id, team_id: away_team_id,event_id: event_id,match_date:match_date }
  end

end
