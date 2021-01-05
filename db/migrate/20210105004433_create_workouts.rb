class CreateWorkouts < ActiveRecord::Migration[5.2]
  def change
    create_table :workouts do |t|
      t.string :title
      t.string :type
      t.string :duration
      t.date :date

      t.timestamps
    end
  end
end
