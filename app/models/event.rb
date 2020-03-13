class Event < ApplicationRecord

 validates :name,:types,:no_players,presence:true
 validates :name,uniqueness:true

end