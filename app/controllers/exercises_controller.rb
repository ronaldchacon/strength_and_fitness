class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.order("#{params[:sort] || 'id'} #{params[:dir] || 'desc'}")
    @exercises = paginate(@exercises)
    render json: @exercises,
           include: ['equipment', 'muscles', 'exercise_types'],
           status: :ok
  end
end
