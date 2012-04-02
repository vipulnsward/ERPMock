require 'test_helper'

class TrAccountsControllerTest < ActionController::TestCase
  setup do
    @tr_account = tr_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tr_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tr_account" do
    assert_difference('TrAccount.count') do
      post :create, :tr_account => @tr_account.attributes
    end

    assert_redirected_to tr_account_path(assigns(:tr_account))
  end

  test "should show tr_account" do
    get :show, :id => @tr_account.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @tr_account.to_param
    assert_response :success
  end

  test "should update tr_account" do
    put :update, :id => @tr_account.to_param, :tr_account => @tr_account.attributes
    assert_redirected_to tr_account_path(assigns(:tr_account))
  end

  test "should destroy tr_account" do
    assert_difference('TrAccount.count', -1) do
      delete :destroy, :id => @tr_account.to_param
    end

    assert_redirected_to tr_accounts_path
  end
end
