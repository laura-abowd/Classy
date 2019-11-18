require 'test_helper'

class ClassroomsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get classrooms_create_url
    assert_response :success
  end

  test "should get index" do
    get classrooms_index_url
    assert_response :success
  end

  test "should get update" do
    get classrooms_update_url
    assert_response :success
  end

end
