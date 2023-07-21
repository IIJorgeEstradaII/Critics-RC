class Platform < ApplicationRecord
  #Associations
  has_and_belongs_to_many :games
end
