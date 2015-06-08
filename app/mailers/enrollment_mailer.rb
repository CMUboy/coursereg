class EnrollmentMailer < ApplicationMailer
  def registration_email(account, enrollment)
    @enrollment = enrollment
    student = account.student
    email_with_name = %("#{student.first_name} #{student.last_name}" <#{account.email}>)
    mail(to: email_with_name, subject: "Welcome to #{enrollment.course.title}")
  end
end
