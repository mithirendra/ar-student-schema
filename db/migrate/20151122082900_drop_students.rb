require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class DropStudents < ActiveRecord::Migration
  
	def change
    	drop_table :students
  end

end