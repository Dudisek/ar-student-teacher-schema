require_relative '../../db/config'
require 'date'

class Subject < ActiveRecord::Base
  belongs_to :student
  belongs_to :teacher
end

# student = Student.find 4
# student.name
# student.age

# p Student.all