require 'test_helper'

class AddressesControllerTest < ActionController::TestCase
  setup do
    @address = addresses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:addresses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create address" do
    assert_difference('Address.count') do
      post :create, address: { administrative_area_level_1: @address.administrative_area_level_1, administrative_area_level_2: @address.administrative_area_level_2, country: @address.country, floor_area: @address.floor_area, formatted_address: @address.formatted_address, heat: @address.heat, latitude: @address.latitude, locality: @address.locality, longitude: @address.longitude, occupancy: @address.occupancy, postal_code: @address.postal_code, route: @address.route, street_number: @address.street_number, wood_stove: @address.wood_stove, year_built: @address.year_built }
    end

    assert_redirected_to address_path(assigns(:address))
  end

  test "should show address" do
    get :show, id: @address
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @address
    assert_response :success
  end

  test "should update address" do
    put :update, id: @address, address: { administrative_area_level_1: @address.administrative_area_level_1, administrative_area_level_2: @address.administrative_area_level_2, country: @address.country, floor_area: @address.floor_area, formatted_address: @address.formatted_address, heat: @address.heat, latitude: @address.latitude, locality: @address.locality, longitude: @address.longitude, occupancy: @address.occupancy, postal_code: @address.postal_code, route: @address.route, street_number: @address.street_number, wood_stove: @address.wood_stove, year_built: @address.year_built }
    assert_redirected_to address_path(assigns(:address))
  end

  test "should destroy address" do
    assert_difference('Address.count', -1) do
      delete :destroy, id: @address
    end

    assert_redirected_to addresses_path
  end
end
