class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
  end

  def show
    @exercise = Exercise.find_by_slug(params[:id])
  end
end
