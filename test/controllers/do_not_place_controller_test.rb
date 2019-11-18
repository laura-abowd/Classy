require 'test_helper'

class DoNotPlaceControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get do_not_place_create_url
    assert_response :success
  end

end
