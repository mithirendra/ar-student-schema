require_relative '../../db/config'
require 'date'

class Teacher < ActiveRecord::Base
# implement your Teacher model here

has_many :student_teachers
has_many :students, :through => :student_teachers

validates :email, :format => { :with => /\w+[@]\w+[.]\w{1}\w+/}, :uniqueness => true
validates :phone, :format => { :with => /1?\W*([2-9][0-8][0-9])\W*([2-9][0-9]{2})\W*([0-9]{4})(\se?x?t?(\d*))?/}
	
	def name
		name = first_name + " " + last_name
	end

	def teacher_find_student
		
	end

end
