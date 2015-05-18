# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

course_term = CourseTerm.create({year: 2015, season: :summer})
course = Course.create({number: 'RUBY DL210', title: 'Applications with Ruby on Rails', enrollment_capacity: 30})
student = Student.create({number: '2015051701', first_name: 'John', last_name: 'Smith'})
enrollment = Enrollment.create({course_term: course_term, student: student, course: course})
