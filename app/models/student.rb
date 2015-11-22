require_relative '../../db/config'
require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
# implement your Student model here

validates :email, :format => { :with => /\w+[@]\w+[.]\w{1}\w+/}, :uniqueness => true
validates :age, :numericality => {:greater_than_or_equal_to => 5}
validates :phone, :format => { :with => /1?\W*([2-9][0-8][0-9])\W*([2-9][0-9]{2})\W*([0-9]{4})(\se?x?t?(\d*))?/}
	
belongs_to :teacher

	def name
		name = first_name + " " + last_name
	end

	def age
		now = Date.today.year
		birthyear = self.birthday.year
		age = now - birthyear
	end

end

# Testing for student data
# student = Student.find(10)
# p student.name
# p student.age
# p student.email

# student2 = Student.find_by(first_name: 'Andrew')
# p student.name
# p student.phone

# p Student.all
