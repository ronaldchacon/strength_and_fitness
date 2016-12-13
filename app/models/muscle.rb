class Muscle < ApplicationRecord
  has_many :exercise_muscles
  has_many :exercises, through: :exercise_muscles

  validates :name, presence: true
end
