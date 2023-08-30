class ExercisesController < ApplicationController
  def index
    @exercises = Exercise.all
    @current_exercise = Exercise.find_by_slug(params[:current_exercise])
  end

  def show
    @exercise = Exercise.find_by_slug(params[:id])
  end
end
