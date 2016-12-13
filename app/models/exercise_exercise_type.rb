class ExerciseExerciseType < ApplicationRecord
  belongs_to :exercise
  belongs_to :exercise_type

  validates :exercise_id, presence: true
  validates :exercise_type_id, presence: true
end
