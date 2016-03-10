class ProfileController < ApplicationController
  def index
    @total_instructors = Instructor.count
    @total_subjects = Subject.count
  end
end
