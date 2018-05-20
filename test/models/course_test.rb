require 'test_helper'

class CourseTest < ActiveSupport::TestCase
   test "the truth" do
    course = Course.new(title: 'OS')
    assert_equal 'OS', course.title
   end
end
