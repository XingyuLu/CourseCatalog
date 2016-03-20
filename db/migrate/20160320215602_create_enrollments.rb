class CreateEnrollments < ActiveRecord::Migration
  def change
    create_table :enrollments do |t|
      t.integer :user_id
      t.string :course_name
      t.string :subject_name

      t.timestamps null: false
    end
  end
end
