class CreateExercises < ActiveRecord::Migration[7.0]
  def change
    create_table :exercises do |t|
      t.string :name, null: false
      t.integer :position, default: 0, null: false

      t.timestamps
    end
  end
end
