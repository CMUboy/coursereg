class EnrollmentsController < ApplicationController
  def select_term
    @enrollment = Enrollment.new
    @course_terms = CourseTerm.order(year: :asc, season: :asc)
  end

  def select_course
    @enrollment = Enrollment.new
    @course_term = course_term
    @courses = Course.all
  end

  def select_student
    @enrollment = Enrollment.new
    @course_term = course_term
    @course = course
    @students = Student.all
  end

  def complete_registration
    enrollment = Enrollment.new
    enrollment.course_term = course_term
    enrollment.course = course
    enrollment.student = student
    enrollment.save

    flash[:message] = 'Course enrollment successful. Enroll another?'
    redirect_to register_path
  end

  private

  def course_term
    CourseTerm.find(params[:enrollment][:course_term])
  end

  def course
    Course.find(params[:enrollment][:course])
  end

  def student
    Student.find(params[:enrollment][:student])
  end
end
