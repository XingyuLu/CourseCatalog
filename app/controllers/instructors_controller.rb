class InstructorsController < ApplicationController
  def index
    @instructors = Instructor.select(:first, :middle, :last).uniq.order(:first)
  end
end
