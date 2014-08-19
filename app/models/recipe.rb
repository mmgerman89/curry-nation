class Recipe < ActiveRecord::Base
  DIFFICULTY = %w(Easy Medium Hard)
  
  belongs_to :food_type
  belongs_to :food_preference
  belongs_to :cuisine
  
  validates :title, presence: true
  validates :food_preference_id, :food_type_id, :cuisine_id, presence: true
  
end
