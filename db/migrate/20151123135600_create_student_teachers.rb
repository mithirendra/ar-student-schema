require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class CreateStudentTeachers < ActiveRecord::Migration
  def change
    create_table :student_teachers do |t|
      t.belongs_to :teacher, index: true
      t.belongs_to :student, index: true
      t.timestamps null: false
    end
  end
end
