class Recipe < ActiveRecord::Base
  DIFFICULTY = %w(Easy Medium Hard)
  
  belongs_to :food_type
  belongs_to :food_preference
  belongs_to :cuisine
  
  validates :title, presence: true
  validates :food_preference_id, :food_type_id, :cuisine_id, presence: true
  
  scope :food_type, ->(food_type) { where food_type: food_type }
  scope :food_preference, ->(food_preference) { where food_preference: food_preference }
  scope :cuisine, ->(cuisine) { where cuisine: cuisine}
  scope :starts_with, ->(name) { where("title like ?", "#{name}%") }
end
