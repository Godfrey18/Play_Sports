class Event < ApplicationRecord
  belongs_to :team
 

 validates :name,:types,:no_players,presence:true
 validates :name,uniqueness:true
end