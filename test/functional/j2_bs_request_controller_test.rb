require 'test_helper'

class J2BsRequestControllerTest < ActionController::TestCase
  test "should get new" do
    get :new
    assert_response :success
  end

end
