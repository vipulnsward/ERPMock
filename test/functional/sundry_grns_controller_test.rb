require 'test_helper'

class SundryGrnsControllerTest < ActionController::TestCase
  setup do
    @sundry_grn = sundry_grns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sundry_grns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sundry_grn" do
    assert_difference('SundryGrn.count') do
      post :create, :sundry_grn => @sundry_grn.attributes
    end

    assert_redirected_to sundry_grn_path(assigns(:sundry_grn))
  end

  test "should show sundry_grn" do
    get :show, :id => @sundry_grn.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @sundry_grn.to_param
    assert_response :success
  end

  test "should update sundry_grn" do
    put :update, :id => @sundry_grn.to_param, :sundry_grn => @sundry_grn.attributes
    assert_redirected_to sundry_grn_path(assigns(:sundry_grn))
  end

  test "should destroy sundry_grn" do
    assert_difference('SundryGrn.count', -1) do
      delete :destroy, :id => @sundry_grn.to_param
    end

    assert_redirected_to sundry_grns_path
  end
end
