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
    @enrollment = Enrollment.new
    @enrollment.user_id = params[:user_id]
    @enrollment.course_name = params[:course_name]
    @enrollment.subject_name = params[:subject_name]
    @enrollment.save
  end

end
