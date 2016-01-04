require 'test_helper'

class StudentTest < ActiveSupport::TestCase

  def setup
  	@student = Student.new(name: "Example Student", register_number: "11111111",
  		                   status: 1)
  end
  
  test "should be valid" do
  	assert @student.valid?
  end

  test "name should be present" do
  	@student.name = "     "
  	assert_not @student.valid?
  end

  test "register number should be present" do
  	@student.register_number = "     "
  	assert_not @student.valid?
  end

  test "name should not be too long" do
  	@student.name = "a" * 46
  	assert_not @student.valid?
  end

  test "register number should not be too long" do
  	@student.register_number = "a" * 46
  	assert_not @student.valid?
  end
end
