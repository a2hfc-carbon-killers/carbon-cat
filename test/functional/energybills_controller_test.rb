require 'test_helper'

class EnergybillsControllerTest < ActionController::TestCase
  setup do
    @energybill = energybills(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:energybills)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create energybill" do
    assert_difference('Energybill.count') do
      post :create, energybill: { address_id: @energybill.address_id, q1ccf: @energybill.q1ccf, q1kwh: @energybill.q1kwh, q2ccf: @energybill.q2ccf, q2kwh: @energybill.q2kwh, q3ccf: @energybill.q3ccf, q3kwh: @energybill.q3kwh, q4ccf: @energybill.q4ccf, q4kwh: @energybill.q4kwh }
    end

    assert_redirected_to energybill_path(assigns(:energybill))
  end

  test "should show energybill" do
    get :show, id: @energybill
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @energybill
    assert_response :success
  end

  test "should update energybill" do
    put :update, id: @energybill, energybill: { address_id: @energybill.address_id, q1ccf: @energybill.q1ccf, q1kwh: @energybill.q1kwh, q2ccf: @energybill.q2ccf, q2kwh: @energybill.q2kwh, q3ccf: @energybill.q3ccf, q3kwh: @energybill.q3kwh, q4ccf: @energybill.q4ccf, q4kwh: @energybill.q4kwh }
    assert_redirected_to energybill_path(assigns(:energybill))
  end

  test "should destroy energybill" do
    assert_difference('Energybill.count', -1) do
      delete :destroy, id: @energybill
    end

    assert_redirected_to energybills_path
  end
end
