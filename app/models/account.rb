class Account < ActiveRecord::Base
  enum role: [:student, :admin]
  belongs_to :student

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :student
  end

  def name
    student.nil? ? 'Administrator' : student.first_name
  end

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
