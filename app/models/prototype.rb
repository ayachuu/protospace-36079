class Prototype < ApplicationRecord
  validates :title,      null: false
  validates :catch_copy, null: false
  validates :concept,    null: false
  validates :image,      presence: true
  
  belongs_ to :user
  has_one_attached :image
end
