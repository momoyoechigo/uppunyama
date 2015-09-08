require 'test_helper'

class UppunyamaControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
