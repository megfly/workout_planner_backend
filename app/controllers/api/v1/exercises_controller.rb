class Api::V1::ExercisesController < ApplicationController

    def index 
        #we dont need instance variables because we arent passing the instances to the erb/views
        exercises = Exercise.all
        render json: ExerciseSerializer.new(exercises)
    end 

    def new 
        params[:workout_id] && Workout.find_by_id(params[:workout_id])
        workout = Workout.find_by_id(params[:workout_id])
        exercise = workout.exercises.build
        render json: ExerciseSerializer.new(exercises)
    end 

    def create 
        workout = Workout.find(params[:workout_id])
        exercise = Exercise.new(exercise_params)
        if exercise.save 
            render json: ExerciseSerializer.new(exercise)
        else 
            render json: {errors: workout.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    def destroy 
        workout = Workout.find_by_id(params[:workout_id])
        exercise = Exercise.find(params[:id])
        exercise.destroy 

        render json: ExerciseSerializer.new(exercise)
    end 

    private 

    def exercise_params 
        params.require(:exercise).permit(:name, :reps, :sets, :weight, :workout_id)
    end 

end