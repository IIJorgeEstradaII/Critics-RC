class Company < ApplicationRecord
  has_one_attached :cover

  #Associations
  has_many :involved_companies, dependent: :destroy
  has_many :games, through: :involved_companies, counter_cache: true
  has_many :critics, as: :criticable, dependent: :destroy
end
