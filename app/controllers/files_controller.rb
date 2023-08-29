class FilesController < ApplicationController
  def show
    exercise = Exercise.find_by_slug(params[:exercise_id])

    @file = exercise.related_files_as_files.find do |f|
      f.to_param == params[:md5]
    end
  end
end
