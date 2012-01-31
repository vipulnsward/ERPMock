require 'test_helper'

class GrnPosControllerTest < ActionController::TestCase
  setup do
    @grn_po = grn_pos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:grn_pos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create grn_po" do
    assert_difference('GrnPo.count') do
      post :create, :grn_po => @grn_po.attributes
    end

    assert_redirected_to grn_po_path(assigns(:grn_po))
  end

  test "should show grn_po" do
    get :show, :id => @grn_po.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @grn_po.to_param
    assert_response :success
  end

  test "should update grn_po" do
    put :update, :id => @grn_po.to_param, :grn_po => @grn_po.attributes
    assert_redirected_to grn_po_path(assigns(:grn_po))
  end

  test "should destroy grn_po" do
    assert_difference('GrnPo.count', -1) do
      delete :destroy, :id => @grn_po.to_param
    end

    assert_redirected_to grn_pos_path
  end
end
