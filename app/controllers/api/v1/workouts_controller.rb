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

    def update 
        workout = Workout.find(params[:id]) 
        if workout.update(workout_params)
            render json: WorkoutSerializer.new(workout), status: :accepted
        else 
            render json: {errors: workout.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    def destroy 
        workout = Workout.find(params[:id])
        workout.destroy 

        render json: WorkoutSerializer.new(workout)
    end 

    private 
#strong params- permiting these attributes to the db, to create a new instance
#nested
    def workout_params 
        params.require(:workout).permit(
            :title, :duration, :date,
            exercises_attributes: [
                :name, 
                :reps, 
                :sets, 
                :weight
            ]
        )
    end

end
