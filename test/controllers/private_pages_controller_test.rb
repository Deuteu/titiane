require 'test_helper'

class PrivatePagesControllerTest < ActionController::TestCase
  test "should get private" do
    get :private
    assert_response :success
  end

end
