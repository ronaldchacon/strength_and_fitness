class ExerciseMuscle < ApplicationRecord
  belongs_to :exercise
  belongs_to :muscle

  validates :exercise_id, presence: true
  validates :muscle_id, presence: true
end
