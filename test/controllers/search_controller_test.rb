require 'test_helper'

class SearchControllerTest < ActionController::TestCase
  test "should get new" do
    get :index
    assert_response :success
  end

end
