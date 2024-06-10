class Review < ApplicationRecord
  belongs_to :diningplace

  validates :content, presence: true
  validates :rating, presence: true, inclusion: { in: 0..5 }, numericality: { only_integer: true, greater_than_or_equal_to: 0, less_than_or_equal_to: 5 }
  validates :diningplace, presence:true
end
