class ApplicationController < ActionController::Base
  helper_method :current_file?

  private

  def current_file?(file)
    file.to_param == params[:md5]
  end
end
