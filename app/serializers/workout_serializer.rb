class WorkoutSerializer
  include JSONAPI::Serializer
  attributes :title, :duration, :date, :exercises
end
