class ApplicationController < ActionController::Base
  before_action :set_preferences

  helper_method :current_file?

  private

  def current_file?(file)
    file.to_param == params[:md5]
  end

  def set_preferences
    Current.hide_css_classes = session.fetch(:hide_css_classes, true)
    Current.show_related_files = session.fetch(:show_related_files, true)
  end
end
