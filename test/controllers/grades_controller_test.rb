require 'test_helper'

class GradesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get grades_create_url
    assert_response :success
  end

end
