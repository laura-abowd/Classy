require 'test_helper'

class TeachersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get teachers_create_url
    assert_response :success
  end

end
