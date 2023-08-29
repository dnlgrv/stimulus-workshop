class FilesController < ApplicationController
  before_action :set_turbo_frame_id

  def show
    exercise = Exercise.find_by_slug(params[:exercise_id])

    @file = exercise.related_files_as_files.find do |f|
      f.to_param == params[:md5]
    end
  end

  private

  def set_turbo_frame_id
    @turbo_frame_id = turbo_frame_request_id
  end
end
