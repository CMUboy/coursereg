# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Create some course terms
CourseTerm.create({year: 2015, season: :summer})
CourseTerm.create({year: 2015, season: :fall})
CourseTerm.create({year: 2016, season: :winter})

# Create some courses
Course.create({number: 'RUBY DL110', title: 'Ruby: The Core Language', enrollment_capacity: 2})
Course.create({number: 'RUBY DL210', title: 'Applications with Ruby on Rails', enrollment_capacity: 2})
Course.create({number: 'RUBY DL310', title: 'Advanced Topics in Ruby on Rails', enrollment_capacity: 2})

# Create some students
Student.create({number: '1805122301', first_name: 'Joseph', last_name: 'Smith'})
Student.create({number: '1804071001', first_name: 'Emma', last_name: 'Hale'})
Student.create({number: '1801060101', first_name: 'Birgham', last_name: 'Young'})
