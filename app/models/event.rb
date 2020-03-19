class Event < ApplicationRecord
  has_many :matches
 
validates :username, presence: true
 validates :name,:types,:no_players,presence:true
 validates :name,uniqueness:true
end