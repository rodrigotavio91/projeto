class Student < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 45 }
  validates :register_number, presence: true, length: { maximum: 45 }
  validates_uniqueness_of :register_number
  has_many :courses, class_name:  "Registration",
   					 foreign_key: "student_id",
   					 dependent:   :destroy
end
