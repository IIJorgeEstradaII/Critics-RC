class Game < ApplicationRecord
  #Associations
  has_one_attached :cover
  belongs_to :parent, class_name: 'Game', optional: true
  has_many :expansions, class_name: 'Game', foreign_key: 'parent_id'

  has_many :involved_companies, dependent: :destroy
  has_many :companies, through: :involved_companies

  has_and_belongs_to_many :genres
  has_and_belongs_to_many :platforms

  has_many :critics, as: :criticable, dependent: :destroy
end
