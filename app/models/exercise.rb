class Exercise < ApplicationRecord
  include Sequenced

  def self.find_by_slug(slug)
    find_by(name: slug.titleize)
  end

  def to_param
    name.parameterize
  end

  def instructions
    @instructions ||= Exercise::Instructions.new(self)
  end

  def instructions_available?
    instructions.present?
  end

  def file_path
    Rails.root.join("app", "views", "exercises", to_param, "exercise.html.erb")
  end

  def render_in(view_context)
    view_context.render partial: "exercises/#{to_param}/exercise"
  end
end
