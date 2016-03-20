class SearchController < ApplicationController
  def index
      # respond_to do |format|
      #   format.html { redirect_to profile_url }
      #   format.js
      # end
      @all_subj = Subject.select(:name).uniq.order(:name).map {|i| i.name}
  end

  def results
    result = CourseSubject.search(params[:course], params[:subject]).all
    @foundCourse = result.select(:c_name,:s_id).uniq.order(:c_name)
  end

  def enroll
    elment = Enrollment.new
    elment.user_id = params[:user_id]
    elment.course_name = params[:course_name]
    elment.subject_name = params[:subject_name]
    elment.save

    if Enrollment.where("user_id = ? AND course_name = ?", elment.user_id, elment.course_name).count > 1
      @enrollment = nil
    else
      @enrollment = elment
    end
  end

end
