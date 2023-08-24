class ExercisesController < ApplicationController
  def show
    @exercise = Exercise.find_by_slug(params[:id])
  end
end
