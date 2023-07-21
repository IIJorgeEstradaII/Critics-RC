class User < ApplicationRecord
  #Associations
  has_many :critics, dependent: :destroy
end
