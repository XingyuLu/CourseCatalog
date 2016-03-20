class Course < ActiveRecord::Base
  has_many :courses_subjects
  has_many :enrollments
end
