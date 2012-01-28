require 'test_helper'

class IclassesControllerTest < ActionController::TestCase
  setup do
    @iclass = iclasses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:iclasses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create iclass" do
    assert_difference('Iclass.count') do
      post :create, :iclass => @iclass.attributes
    end

    assert_redirected_to iclass_path(assigns(:iclass))
  end

  test "should show iclass" do
    get :show, :id => @iclass.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @iclass.to_param
    assert_response :success
  end

  test "should update iclass" do
    put :update, :id => @iclass.to_param, :iclass => @iclass.attributes
    assert_redirected_to iclass_path(assigns(:iclass))
  end

  test "should destroy iclass" do
    assert_difference('Iclass.count', -1) do
      delete :destroy, :id => @iclass.to_param
    end

    assert_redirected_to iclasses_path
  end
end
