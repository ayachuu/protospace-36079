class Prototype < ApplicationRecord
  validates :title,      null: false
  validates :catch_copy, null: false
  validates :concept,    null: false
  validates :image,      presence: true
  
  has_many :users
  has_one_attached :image
end
