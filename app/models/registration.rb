class Registration < ActiveRecord::Base
  belongs_to :course,  class_name: "Course"
  belongs_to :student, class_name: "Student"
  validates :student_id, presence: true
  validates :course_id,  presence: true
  validates_uniqueness_of :course_id, scope: :student_id
end
