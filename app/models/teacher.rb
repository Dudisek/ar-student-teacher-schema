require_relative '../../db/config'

require 'date'

class Teacher < ActiveRecord::Base

		has_many :subjects
		has_many :students, through: :subjects

		validates :name, :uniqueness => true
		validates :email, :format => { :with => /\w@\w{1}+[.]\w{2}/}, :uniqueness => true

end

# student = Student.find 4
# student.name
# student.age

# p Student.all