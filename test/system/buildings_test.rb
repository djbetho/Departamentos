require "application_system_test_case"

class BuildingsTest < ApplicationSystemTestCase
  setup do
    @building = buildings(:one)
  end

  test "visiting the index" do
    visit buildings_url
    assert_selector "h1", text: "Buildings"
  end

  test "should create building" do
    visit buildings_url
    click_on "New building"

    fill_in "Address", with: @building.address
    fill_in "City", with: @building.city_id
    check "Has bbq" if @building.has_bbq
    check "Has green areas" if @building.has_green_areas
    check "Has gym" if @building.has_gym
    check "Has parking" if @building.has_parking
    check "Has playground" if @building.has_playground
    check "Has pool" if @building.has_pool
    fill_in "Name", with: @building.name
    click_on "Create Building"

    assert_text "Building was successfully created"
    click_on "Back"
  end

  test "should update Building" do
    visit building_url(@building)
    click_on "Edit this building", match: :first

    fill_in "Address", with: @building.address
    fill_in "City", with: @building.city_id
    check "Has bbq" if @building.has_bbq
    check "Has green areas" if @building.has_green_areas
    check "Has gym" if @building.has_gym
    check "Has parking" if @building.has_parking
    check "Has playground" if @building.has_playground
    check "Has pool" if @building.has_pool
    fill_in "Name", with: @building.name
    click_on "Update Building"

    assert_text "Building was successfully updated"
    click_on "Back"
  end

  test "should destroy Building" do
    visit building_url(@building)
    click_on "Destroy this building", match: :first

    assert_text "Building was successfully destroyed"
  end
end
