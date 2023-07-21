class InvolvedCompany < ApplicationRecord
  #Associations
  belongs_to :company, counter_cache: :games_count
  belongs_to :game
end
