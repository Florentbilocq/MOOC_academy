class Course < ApplicationRecord
  has_many :user
  has_many :lesson
end
