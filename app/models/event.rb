class Event < ApplicationRecord
  belongs_to :user
  belongs_to :student
  belongs_to :instructor
end
