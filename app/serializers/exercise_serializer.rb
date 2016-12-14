class ExerciseSerializer < ActiveModel::Serializer
  attributes :id, :name

  belongs_to :equipment

  has_many :muscles
  has_many :exercise_types
end
