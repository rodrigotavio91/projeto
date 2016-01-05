require 'test_helper'

class CourseTest < ActiveSupport::TestCase
  
  def setup
  	@course = Course.new(name: "Example Course", description: "Description",
  		                   status: 1)
  end
  
  test "should be valid" do
  	assert @course.valid?
  end

  test "name should be present" do
  	@course.name = "     "
  	assert_not @course.valid?
  end

  test "description should be present" do
  	@course.description = "     "
  	assert_not @course.valid?
  end

  test "name should not be too long" do
  	@course.name = "a" * 46
  	assert_not @course.valid?
  end

  test "description should not be too long" do
  	@course.description = "a" * 46
  	assert_not @course.valid?
  end

end
