class Exercise::Instructions
  def initialize(exercise)
    @exercise = exercise
  end

  def present?
    file_path.exist?
  end

  def render_in(view_context)
    view_context.render partial: partial_path
  end

  private

  def file_path
    Rails.root.join("app", "views", "exercises", @exercise.to_param, "_instructions.html.erb")
  end

  def partial_path
    "exercises/#{@exercise.to_param}/instructions"
  end
end
