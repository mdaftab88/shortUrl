require "application_system_test_case"

class ShortUrlGsTest < ApplicationSystemTestCase
  setup do
    @short_url_g = short_url_gs(:one)
  end

  test "visiting the index" do
    visit short_url_gs_url
    assert_selector "h1", text: "Short Url Gs"
  end

  test "creating a Short url g" do
    visit short_url_gs_url
    click_on "New Short Url G"

    fill_in "Short url", with: @short_url_g.short_url
    fill_in "Url", with: @short_url_g.url
    click_on "Create Short url g"

    assert_text "Short url g was successfully created"
    click_on "Back"
  end

  test "updating a Short url g" do
    visit short_url_gs_url
    click_on "Edit", match: :first

    fill_in "Short url", with: @short_url_g.short_url
    fill_in "Url", with: @short_url_g.url
    click_on "Update Short url g"

    assert_text "Short url g was successfully updated"
    click_on "Back"
  end

  test "destroying a Short url g" do
    visit short_url_gs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Short url g was successfully destroyed"
  end
end
