class Recipe < ApplicationRecord
  has_rich_text :instructions

  belongs_to :user

  validates :title, presence: true
  validates :cook_time, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :difficulty, presence: true, inclusion: { in: ["Easy", "Medium", "Hard"] }
end
