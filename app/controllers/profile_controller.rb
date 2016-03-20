class ProfileController < ApplicationController
  def index
    @courseEnrolled = Enrollment.select(:course_name).where("user_id = ?", session[:user_id]).uniq
  end
end
