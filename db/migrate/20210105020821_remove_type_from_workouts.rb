class RemoveTypeFromWorkouts < ActiveRecord::Migration[5.2]
  def change
    remove_column :workouts, :type, :string 
  end
end
