class ExercisesController < ApplicationController
  def index
    @exercises = paginate(Exercise)
    render json: @exercises,
           include: ['equipment', 'muscles', 'exercise_types'],
           status: :ok
  end
end
