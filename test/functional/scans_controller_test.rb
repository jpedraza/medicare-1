require 'test_helper'

class ScansControllerTest < ActionController::TestCase
  setup do
    @scan = scans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:scans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create scan" do
    assert_difference('Scan.count') do
      post :create, scan: { name: @scan.name, scantype_id: @scan.scantype_id, treatment_id: @scan.treatment_id }
    end

    assert_redirected_to scan_path(assigns(:scan))
  end

  test "should show scan" do
    get :show, id: @scan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @scan
    assert_response :success
  end

  test "should update scan" do
    put :update, id: @scan, scan: { name: @scan.name, scantype_id: @scan.scantype_id, treatment_id: @scan.treatment_id }
    assert_redirected_to scan_path(assigns(:scan))
  end

  test "should destroy scan" do
    assert_difference('Scan.count', -1) do
      delete :destroy, id: @scan
    end

    assert_redirected_to scans_path
  end
end
