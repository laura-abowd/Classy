require 'test_helper'

class ClassroomEnrollmentControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get classroom_enrollment_create_url
    assert_response :success
  end

  test "should get update" do
    get classroom_enrollment_update_url
    assert_response :success
  end

end
