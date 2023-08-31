class PreferencesController < ApplicationController
  def update
    preferences_params.each do |key, value|
      session[key] = ActiveModel::Type::Boolean.new.cast(value)
    end

    set_preferences
    head :no_content
  end

  private

  def preferences_params
    params.require(:preferences).permit(:hide_css_classes, :show_related_files)
  end
end
