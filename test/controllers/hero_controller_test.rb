require 'test_helper'

class HeroControllerTest < ActionController::TestCase
  test "should get in" do
    get :in
    assert_response :success
  end

end
