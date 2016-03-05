require 'test_helper'

class DogsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get one" do
    get :one
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

end
