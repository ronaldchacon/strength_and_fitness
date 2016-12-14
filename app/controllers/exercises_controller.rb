class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.page(params[:page]).per(25)
    render json: @exercises,
           include: ['equipment', 'muscles', 'exercise_types'],
           status: :ok
  end
end
