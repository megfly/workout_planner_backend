class Api::V1::WorkoutsController < ApplicationController

    def index 
        #we dont need instance variables because we arent passing the instances to the erb/views
        workouts = Workout.all
        render json: WorkoutSerializer.new(workouts)
    end 

    def create 
        workout = Workout.new(workout_params)
        if workout.save 
            render json: WorkoutSerializer.new(workout), status: :accepted
        else 
            render json: {errors: workout.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    private 
#strong params- permiting these attributes to the db, to create a new instance
    def workout_params 
        params.require(:workout).permit(:title, :duration, :date)
    end

end
