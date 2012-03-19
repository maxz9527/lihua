require 'test_helper'

class CompanypsControllerTest < ActionController::TestCase
  setup do
    @companyp = companyps(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:companyps)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create companyp" do
    assert_difference('Companyp.count') do
      post :create, companyp: @companyp.attributes
    end

    assert_redirected_to companyp_path(assigns(:companyp))
  end

  test "should show companyp" do
    get :show, id: @companyp.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @companyp.to_param
    assert_response :success
  end

  test "should update companyp" do
    put :update, id: @companyp.to_param, companyp: @companyp.attributes
    assert_redirected_to companyp_path(assigns(:companyp))
  end

  test "should destroy companyp" do
    assert_difference('Companyp.count', -1) do
      delete :destroy, id: @companyp.to_param
    end

    assert_redirected_to companyps_path
  end
end
