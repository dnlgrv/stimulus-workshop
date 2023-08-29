class AddRelatedFilesToExercises < ActiveRecord::Migration[7.0]
  def change
    add_column :exercises, :related_files, :text
  end
end
