class Workout < ApplicationRecord
    # to ensure that the destroy action on a given workout deletes any associated posts:
    has_many :exercises, dependent: :destroy
    accepts_nested_attributes_for :exercises
end
