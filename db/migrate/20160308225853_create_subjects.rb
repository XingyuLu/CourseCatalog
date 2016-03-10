class CreateSubjects < ActiveRecord::Migration
  def change
    create_table :subjects do |t|
      t.string :sub_id
      t.string :name
      t.string :abbr

      t.timestamps null: false
    end
  end
end
