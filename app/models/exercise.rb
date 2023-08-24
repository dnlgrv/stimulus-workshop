class Exercise < ApplicationRecord
  default_scope ->{ order(position: :asc) }

  def self.find_by_slug(slug)
    find_by(name: slug.titleize)
  end

  def to_param
    name.parameterize
  end

  def instructions_available?
    Rails.root.join("app", "views", "exercises", to_param, "_instructions.html.erb").exist?
  end

  def render_in(view_context)
    view_context.render partial: "exercises/#{to_param}/exercise"
  end
end
