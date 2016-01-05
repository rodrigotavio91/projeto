require 'test_helper'

class RegistrationTest < ActiveSupport::TestCase
  
  def setup
  	@registration = Registration.new(student_id: 1, course_id: 5)
  end

  test "should be valid" do
  	assert @registration.valid?
  end

  test "should require a student id" do
  	@registration.student_id = nil
  	assert_not @registration.valid?
  end

  test "should require a course id" do
  	@registration.course_id = nil
  	assert_not @registration.valid?
  end

  test "course should not have a student twice" do
    duplicate_registration = @registration.dup
    @registration.save
    assert_not duplicate_registration.valid?
  end
end
