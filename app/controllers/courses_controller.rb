class CoursesController < ApplicationController
  def index
    @courses = Course.select(:name).uniq.order(:name)
  end
end
