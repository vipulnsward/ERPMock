require 'test_helper'

class POrdersControllerTest < ActionController::TestCase
  setup do
    @p_order = p_orders(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:p_orders)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create p_order" do
    assert_difference('POrder.count') do
      post :create, :p_order => @p_order.attributes
    end

    assert_redirected_to p_order_path(assigns(:p_order))
  end

  test "should show p_order" do
    get :show, :id => @p_order.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @p_order.to_param
    assert_response :success
  end

  test "should update p_order" do
    put :update, :id => @p_order.to_param, :p_order => @p_order.attributes
    assert_redirected_to p_order_path(assigns(:p_order))
  end

  test "should destroy p_order" do
    assert_difference('POrder.count', -1) do
      delete :destroy, :id => @p_order.to_param
    end

    assert_redirected_to p_orders_path
  end
end
