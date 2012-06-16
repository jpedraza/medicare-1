require 'test_helper'

class TreatmentsControllerTest < ActionController::TestCase
  setup do
    @treatment = treatments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:treatments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create treatment" do
    assert_difference('Treatment.count') do
      post :create, treatment: { anamnesis: @treatment.anamnesis, complaints: @treatment.complaints, diagnosis: @treatment.diagnosis, diagnosis_id: @treatment.diagnosis_id, doctor_id: @treatment.doctor_id, patient_id: @treatment.patient_id, plandate: @treatment.plandate, tests: @treatment.tests }
    end

    assert_redirected_to treatment_path(assigns(:treatment))
  end

  test "should show treatment" do
    get :show, id: @treatment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @treatment
    assert_response :success
  end

  test "should update treatment" do
    put :update, id: @treatment, treatment: { anamnesis: @treatment.anamnesis, complaints: @treatment.complaints, diagnosis: @treatment.diagnosis, diagnosis_id: @treatment.diagnosis_id, doctor_id: @treatment.doctor_id, patient_id: @treatment.patient_id, plandate: @treatment.plandate, tests: @treatment.tests }
    assert_redirected_to treatment_path(assigns(:treatment))
  end

  test "should destroy treatment" do
    assert_difference('Treatment.count', -1) do
      delete :destroy, id: @treatment
    end

    assert_redirected_to treatments_path
  end
end
