require 'test_helper'

class ChickensControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chickens_index_url
    assert_response :success
  end

  test "should get create" do
    get chickens_create_url
    assert_response :success
  end

  test "should get new" do
    get chickens_new_url
    assert_response :success
  end

  test "should get show" do
    get chickens_show_url
    assert_response :success
  end

end
