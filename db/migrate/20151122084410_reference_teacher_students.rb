require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class ReferenceTeacherStudents < ActiveRecord::Migration
  
	def change
    add_reference :students, :teacher, index: true
  end

end

