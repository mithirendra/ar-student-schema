require_relative 'models/teacher'
require_relative 'models/student'
require_relative 'models/student_teacher'

# Test to look for teacher and student relationships

num1 = 3
	t = Teacher.find(num1)
	p t
	a = t.students
	puts
	puts "Students of Teacher - #{t.first_name} #{t.last_name} (id: #{num1})"
	puts "============================================"
	a.each { |x|
		puts "Student id:#{x.id} - #{x.first_name} #{x.last_name}"
	}

puts

num2 = 18
	s = Student.find(num2)
	a = s.teachers
	puts "Teachers of Student - #{s.first_name} #{s.last_name} (id: #{num2})"
	puts "============================================"
	a.each { |x|
		puts "Teacher id:#{x.id} - #{x.first_name} #{x.last_name}"
	}
	puts

