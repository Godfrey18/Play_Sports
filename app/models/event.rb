class Event < ApplicationRecord
  has_many :matches
  has_many :teams
  
 validates :name,:types,:no_players,presence:true
 validates :name,uniqueness:true
end