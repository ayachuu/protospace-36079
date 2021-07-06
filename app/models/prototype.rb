class Prototype < ApplicationRecord
  belongs_ to :user
  has_one_attached :image
end
