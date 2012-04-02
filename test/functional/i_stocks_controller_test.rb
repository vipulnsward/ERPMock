require 'test_helper'

class IStocksControllerTest < ActionController::TestCase
  setup do
    @i_stock = i_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:i_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create i_stock" do
    assert_difference('IStock.count') do
      post :create, :i_stock => @i_stock.attributes
    end

    assert_redirected_to i_stock_path(assigns(:i_stock))
  end

  test "should show i_stock" do
    get :show, :id => @i_stock.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @i_stock.to_param
    assert_response :success
  end

  test "should update i_stock" do
    put :update, :id => @i_stock.to_param, :i_stock => @i_stock.attributes
    assert_redirected_to i_stock_path(assigns(:i_stock))
  end

  test "should destroy i_stock" do
    assert_difference('IStock.count', -1) do
      delete :destroy, :id => @i_stock.to_param
    end

    assert_redirected_to i_stocks_path
  end
end
