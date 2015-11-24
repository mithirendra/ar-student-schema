require_relative '../app/models/teacher'
require_relative '../app/models/student'
require_relative '../app/models/student_teacher'

module StudentTeachersImporter
	
	def self.import
		500.times do
			t = Teacher.find(rand(1..9))
			s = Student.find(rand(1..54))
			t.students << s
		end
	end

end
