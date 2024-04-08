require "application_system_test_case"

class WaitlistsTest < ApplicationSystemTestCase
  setup do
    @waitlist = waitlists(:one)
  end

  test "visiting the index" do
    visit waitlists_url
    assert_selector "h1", text: "Waitlists"
  end

  test "should create waitlist" do
    visit waitlists_url
    click_on "New waitlist"

    fill_in "Business name", with: @waitlist.business_name
    fill_in "Challenges", with: @waitlist.challenges
    check "Customer base" if @waitlist.customer_base
    fill_in "Email", with: @waitlist.email
    check "Enable customers" if @waitlist.enable_customers
    check "Market" if @waitlist.market
    fill_in "Name", with: @waitlist.name
    click_on "Create Waitlist"

    assert_text "Waitlist was successfully created"
    click_on "Back"
  end

  test "should update Waitlist" do
    visit waitlist_url(@waitlist)
    click_on "Edit this waitlist", match: :first

    fill_in "Business name", with: @waitlist.business_name
    fill_in "Challenges", with: @waitlist.challenges
    check "Customer base" if @waitlist.customer_base
    fill_in "Email", with: @waitlist.email
    check "Enable customers" if @waitlist.enable_customers
    check "Market" if @waitlist.market
    fill_in "Name", with: @waitlist.name
    click_on "Update Waitlist"

    assert_text "Waitlist was successfully updated"
    click_on "Back"
  end

  test "should destroy Waitlist" do
    visit waitlist_url(@waitlist)
    click_on "Destroy this waitlist", match: :first

    assert_text "Waitlist was successfully destroyed"
  end
end
