class ExerciseTypeSerializer < ActiveModel::Serializer
  attributes :id, :name

  has_many :exercises
end
