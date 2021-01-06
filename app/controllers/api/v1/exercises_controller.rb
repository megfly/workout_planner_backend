class Api::V1::ExercisesController < ApplicationController

    def index 
        #we dont need instance variables because we arent passing the instances to the erb/views
        exercises = Exercise.all
        render json: ExerciseSerializer.new(exercises)
    end 

end
