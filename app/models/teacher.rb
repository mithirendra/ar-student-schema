require_relative '../../db/config'
require 'date'

class Teacher < ActiveRecord::Base
# implement your Teacher model here

validates :email, :format => { :with => /\w+[@]\w+[.]\w{1}\w+/}, :uniqueness => true
validates :phone, :format => { :with => /1?\W*([2-9][0-8][0-9])\W*([2-9][0-9]{2})\W*([0-9]{4})(\se?x?t?(\d*))?/}
	
has_many :students

	def name
		name = first_name + " " + last_name
	end


end

# Testing for teacher data
# teacher = Teacher.find(8)
# p teacher.name
# p teacher.email

# p Teacher.all