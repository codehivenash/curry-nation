class Recipe < ActiveRecord::Base
  DIFFICULTY=%w( Easy Medium Hard)
  belongs_to :food_type
  belongs_to :cuisine
  belongs_to :food_preference

  validates :food_type_id, presence: true
  validates :food_preference_id,  presence: true 
  validates :cuisine_id , presence: true
  scope :get_by_food_pref, ->(id){ where("food_preference_id = ?", id )}
  scope :get_by_food_type, ->(id){ where("food_type_id = ?", id )}
  scope :get_by_food_cuisine, ->(id){ where("cuisine_id = ?", id )}
end
