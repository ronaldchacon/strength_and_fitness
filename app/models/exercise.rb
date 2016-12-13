class Exercise < ApplicationRecord
  has_many :exercise_muscles
  has_many :muscles, through: :exercise_muscles

  has_many :exercise_exercise_types
  has_many :exercise_types, through: :exercise_exercise_types
  
  validates :name, presence: true
end
