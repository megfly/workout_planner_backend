class ExerciseSerializer
  include JSONAPI::Serializer
  attributes :name, :reps, :sets, :weight, :workout_id
end
