class ExerciseSerializer
  include JSONAPI::Serializer
  belongs_to :workout
  attributes :name, :reps, :sets, :weight, :workout_id, :workout 
  #by adding :workout it allows us to access the associated workout  
end
