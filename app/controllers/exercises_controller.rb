class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    render json: @exercises,
           include: ['equipment', 'muscles', 'exercise_types'],
           status: :ok
  end
end
