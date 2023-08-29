class Exercise < ApplicationRecord
  include Sequenced
  serialize :related_files

  def self.find_by_slug(slug)
    find_by(name: slug.titleize)
  end

  def to_param
    name.parameterize
  end

  def content
    text = Rails.root.join("app", "exercises", "#{to_param}.md").read
    Kramdown::Document.new(text).to_html
  end
end
