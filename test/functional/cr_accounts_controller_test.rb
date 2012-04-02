require 'test_helper'

class CrAccountsControllerTest < ActionController::TestCase
  setup do
    @cr_account = cr_accounts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cr_accounts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cr_account" do
    assert_difference('CrAccount.count') do
      post :create, :cr_account => @cr_account.attributes
    end

    assert_redirected_to cr_account_path(assigns(:cr_account))
  end

  test "should show cr_account" do
    get :show, :id => @cr_account.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @cr_account.to_param
    assert_response :success
  end

  test "should update cr_account" do
    put :update, :id => @cr_account.to_param, :cr_account => @cr_account.attributes
    assert_redirected_to cr_account_path(assigns(:cr_account))
  end

  test "should destroy cr_account" do
    assert_difference('CrAccount.count', -1) do
      delete :destroy, :id => @cr_account.to_param
    end

    assert_redirected_to cr_accounts_path
  end
end
