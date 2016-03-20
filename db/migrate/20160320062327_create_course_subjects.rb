class CreateCourseSubjects < ActiveRecord::Migration
  def change
    create_table :course_subjects do |t|
      t.string :c_name
      t.string :s_id

      t.timestamps null: false
    end
  end
end
