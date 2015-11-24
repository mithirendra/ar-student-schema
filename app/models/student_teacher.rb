require_relative '../../db/config'
require 'date'

class StudentTeacher < ActiveRecord::Base
# implement your Student Teacher model here

	belongs_to :student
	belongs_to :teacher

end