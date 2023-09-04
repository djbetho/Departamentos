require "test_helper"

class BuildingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @building = buildings(:one)
  end

  test "should get index" do
    get buildings_url
    assert_response :success
  end

  test "should get new" do
    get new_building_url
    assert_response :success
  end

  test "should create building" do
    assert_difference("Building.count") do
      post buildings_url, params: { building: { address: @building.address, city_id: @building.city_id, has_bbq: @building.has_bbq, has_green_areas: @building.has_green_areas, has_gym: @building.has_gym, has_parking: @building.has_parking, has_playground: @building.has_playground, has_pool: @building.has_pool, name: @building.name } }
    end

    assert_redirected_to building_url(Building.last)
  end

  test "should show building" do
    get building_url(@building)
    assert_response :success
  end

  test "should get edit" do
    get edit_building_url(@building)
    assert_response :success
  end

  test "should update building" do
    patch building_url(@building), params: { building: { address: @building.address, city_id: @building.city_id, has_bbq: @building.has_bbq, has_green_areas: @building.has_green_areas, has_gym: @building.has_gym, has_parking: @building.has_parking, has_playground: @building.has_playground, has_pool: @building.has_pool, name: @building.name } }
    assert_redirected_to building_url(@building)
  end

  test "should destroy building" do
    assert_difference("Building.count", -1) do
      delete building_url(@building)
    end

    assert_redirected_to buildings_url
  end
end
