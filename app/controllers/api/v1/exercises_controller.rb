class Api::V1::ExercisesController < ApplicationController

    def index 
        # find the workout and save it in a variable
        workout = Workout.find_by_id(params[:workout_id])
        exercises = workout.exercises
        render json: ExerciseSerializer.new(exercises)
    end 

    def new 
        workout = Workout.find_by_id(params[:workout_id])
        exercise = workout.exercises.build
    end 

    def create  
        workout = Workout.find(params[:workout_id])
        exercise = workout.exercises.build(exercise_params)
        if exercise.save 
            render json: ExerciseSerializer.new(exercise)
        else 
            render json: {errors: workout.errors.full_messages}, status: :unprocessible_entity
        end 
    end 

    def destroy 
        # byebug 
        workout = Workout.find_by_id(params[:workout_id])
        exercise = Exercise.find_by_id(params[:id])
        exercise.destroy 
        render json: ExerciseSerializer.new(exercise)
    end 

    private 

    def exercise_params 
        params.require(:exercise).permit(:name, :reps, :sets, :weight, :workout_id)
    end 

end