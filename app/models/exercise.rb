class Exercise < ApplicationRecord
  include Sequenced
  serialize :related_files

  def self.find_by_slug(slug)
    find_by(name: slug.titleize)
  end

  def to_param
    name.parameterize
  end

  def related_files_as_files
    Array.wrap(related_files).map do |f|
      Exercise::File.new(Rails.root.join(f))
    end.unshift(overview_file)
  end

  def initial_file
    related_files_as_files.first
  end

  private

  def overview_file
    Exercise::File.new(Rails.root.join("app", "exercises", "#{to_param}.md"), "Overview")
  end
end
