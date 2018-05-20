require 'test_helper'

class UserTest < ActiveSupport::TestCase
   test "the truth" do
     user = User.new(name: 'yara',email: 'yarasalah94@hotmail.com')
     assert_equal 'yara', user.name
     assert_equal 'yarasalah94@hotmail.com', user.email
   end
end
