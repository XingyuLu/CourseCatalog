class CourseSubject < ActiveRecord::Base
  belongs_to :course
  belongs_to :subject

  def self.search(search_course, search_subject)
    where(['c_name LIKE ? AND s_id LIKE ?', "%#{search_course}%", "%#{search_subject}%"])
  end
end
