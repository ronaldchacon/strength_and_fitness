class Muscle < ApplicationRecord
  validates :name, presence: true

  has_many :exercise_muscles
  has_many :exercises, through: :exercise_muscles
end
