require 'test_helper'

class SOrdersControllerTest < ActionController::TestCase
  setup do
    @s_order = s_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:s_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create s_order" do
    assert_difference('SOrder.count') do
      post :create, :s_order => @s_order.attributes
    end

    assert_redirected_to s_order_path(assigns(:s_order))
  end

  test "should show s_order" do
    get :show, :id => @s_order.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @s_order.to_param
    assert_response :success
  end

  test "should update s_order" do
    put :update, :id => @s_order.to_param, :s_order => @s_order.attributes
    assert_redirected_to s_order_path(assigns(:s_order))
  end

  test "should destroy s_order" do
    assert_difference('SOrder.count', -1) do
      delete :destroy, :id => @s_order.to_param
    end

    assert_redirected_to s_orders_path
  end
end
