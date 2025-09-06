require "application_system_test_case"

class TripsTest < ApplicationSystemTestCase
  setup do
    @trip = trips(:one)
  end

  test "visiting the index" do
    visit trips_url
    assert_selector "h1", text: "Trips"
  end

  test "should create trip" do
    visit trips_url
    click_on "New trip"

    fill_in "End date", with: @trip.end_date
    fill_in "Location", with: @trip.location
    fill_in "Name", with: @trip.name
    fill_in "Start date", with: @trip.start_date
    click_on "Create Trip"

    assert_text "Trip was successfully created"
    click_on "Back"
  end

  test "should update Trip" do
    visit trip_url(@trip)
    click_on "Edit this trip", match: :first

    fill_in "End date", with: @trip.end_date
    fill_in "Location", with: @trip.location
    fill_in "Name", with: @trip.name
    fill_in "Start date", with: @trip.start_date
    click_on "Update Trip"

    assert_text "Trip was successfully updated"
    click_on "Back"
  end

  test "should destroy Trip" do
    visit trip_url(@trip)
    click_on "Destroy this trip", match: :first

    assert_text "Trip was successfully destroyed"
  end
end
