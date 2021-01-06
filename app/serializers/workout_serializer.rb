class WorkoutSerializer
  include JSONAPI::Serializer
  attributes :title, :duration, :date
end
