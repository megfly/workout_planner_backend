class CreateExercises < ActiveRecord::Migration[5.2]
  def change
    create_table :exercises do |t|
      t.belongs_to :workout
      t.string :name
      t.integer :reps
      t.float :sets
      t.float :weight

      t.timestamps
    end
  end
end
