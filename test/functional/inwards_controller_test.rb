require 'test_helper'

class InwardsControllerTest < ActionController::TestCase
  setup do
    @inward = inwards(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:inwards)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create inward" do
    assert_difference('Inward.count') do
      post :create, :inward => @inward.attributes
    end

    assert_redirected_to inward_path(assigns(:inward))
  end

  test "should show inward" do
    get :show, :id => @inward.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @inward.to_param
    assert_response :success
  end

  test "should update inward" do
    put :update, :id => @inward.to_param, :inward => @inward.attributes
    assert_redirected_to inward_path(assigns(:inward))
  end

  test "should destroy inward" do
    assert_difference('Inward.count', -1) do
      delete :destroy, :id => @inward.to_param
    end

    assert_redirected_to inwards_path
  end
end
