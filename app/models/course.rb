class Course < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 45 }
  validates :description, presence: true, length: { maximum: 45 }
  has_many :students, class_name:  "Registration",
  					  foreign_key: "course_id",
   					  dependent:   :destroy
end
