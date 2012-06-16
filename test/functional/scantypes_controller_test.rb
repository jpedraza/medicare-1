require 'test_helper'

class ScantypesControllerTest < ActionController::TestCase
  setup do
    @scantype = scantypes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scantypes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scantype" do
    assert_difference('Scantype.count') do
      post :create, scantype: { name: @scantype.name }
    end

    assert_redirected_to scantype_path(assigns(:scantype))
  end

  test "should show scantype" do
    get :show, id: @scantype
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scantype
    assert_response :success
  end

  test "should update scantype" do
    put :update, id: @scantype, scantype: { name: @scantype.name }
    assert_redirected_to scantype_path(assigns(:scantype))
  end

  test "should destroy scantype" do
    assert_difference('Scantype.count', -1) do
      delete :destroy, id: @scantype
    end

    assert_redirected_to scantypes_path
  end
end
