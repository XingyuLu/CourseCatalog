class ProfileController < ApplicationController
  def index
    @courseEnrolled = Enrollment.where("user_id = ?", session[:user_id])
  end
end
