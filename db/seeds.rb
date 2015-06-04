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
Course.create({number: 'RUBY DL110',
               title: 'Ruby: The Core Language',
               description: 'The first course introduces fundamental concepts of the Ruby programming language while students begin to build a portfolio of applications on the Rails framework. Through lecture, class discussion and individual and group project work, the class emphasizes the development of ruby engineering best practices.',
               enrollment_capacity: 2})
Course.create({number: 'RUBY DL210',
               title: 'Applications with Ruby on Rails',
               description: 'Students continue to learn how to design, develop, test/debug and deploy applications with Rails platform. Working in small teams on a larger web application project that meets unique business requirements supplied by instructor, students gain practical work place skills.',
               enrollment_capacity: 2})
Course.create({number: 'RUBY DL310',
               title: 'Advanced Topics in Ruby on Rails',
               description: 'The third course focuses on advanced functionalities of Ruby with students applying what they learn in a substantial original project, individually or in groups. Class meetings will include demonstrations, reviews and consultations on student work in progress. Upon completion of this final course in the program, students will have a portfolio of applications demonstrating in-demand Ruby and Ruby on Rails skills and core competencies.',
               enrollment_capacity: 2})

# Create some students
jsmith = Student.create({number: '1805122301', first_name: 'Joseph', last_name: 'Smith'})
ehale = Student.create({number: '1804071001', first_name: 'Emma', last_name: 'Hale'})
byoung = Student.create({number: '1801060101', first_name: 'Birgham', last_name: 'Young'})

# Create some accounts
Account.create({email: Rails.application.secrets.admin_email,
                password: Rails.application.secrets.admin_password,
                password_confirmation: Rails.application.secrets.admin_password,
                role: :admin})
Account.create({email: 'jsmith@zion.edu',
                password: 'password',
                password_confirmation: 'password',
                student: jsmith})
Account.create({email: 'ehale@zion.edu',
                password: 'password',
                password_confirmation: 'password',
                student: ehale})
Account.create({email: 'byoung@zion.edu',
                password: 'password',
                password_confirmation: 'password',
                student: byoung})
