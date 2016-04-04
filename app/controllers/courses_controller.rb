class CoursesController < ApplicationController
  def index
    @courses = Course.select(:name).uniq.order(:name)
  end

  def search
    @all_subj = Subject.select(:name).uniq.order(:name).map {|i| i.name}
    @all_subj.unshift("")
    @foundCourses = nil
  end

  def do_search
    result = CourseSubject.search(params[:course], params[:subject]).all
    @foundCourse = result.select(:c_name,:s_id).uniq.order(:c_name)

    respond_to do |format|
      format.js
    end
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
