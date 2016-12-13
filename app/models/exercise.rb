class Exercise < ApplicationRecord
  belongs_to :equipment

  has_many :exercise_muscles
  has_many :muscles, through: :exercise_muscles

  has_many :exercise_exercise_types
  has_many :exercise_types, through: :exercise_exercise_types

  validates :name, presence: true
  validates :equipment_id, presence: true
end
