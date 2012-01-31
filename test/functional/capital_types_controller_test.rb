require 'test_helper'

class CapitalTypesControllerTest < ActionController::TestCase
  setup do
    @capital_type = capital_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:capital_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create capital_type" do
    assert_difference('CapitalType.count') do
      post :create, :capital_type => @capital_type.attributes
    end

    assert_redirected_to capital_type_path(assigns(:capital_type))
  end

  test "should show capital_type" do
    get :show, :id => @capital_type.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @capital_type.to_param
    assert_response :success
  end

  test "should update capital_type" do
    put :update, :id => @capital_type.to_param, :capital_type => @capital_type.attributes
    assert_redirected_to capital_type_path(assigns(:capital_type))
  end

  test "should destroy capital_type" do
    assert_difference('CapitalType.count', -1) do
      delete :destroy, :id => @capital_type.to_param
    end

    assert_redirected_to capital_types_path
  end
end
