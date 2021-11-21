require "application_system_test_case"

class ScoreCategoriesTest < ApplicationSystemTestCase
  setup do
    @score_category = score_categories(:one)
  end

  test "visiting the index" do
    visit score_categories_url
    assert_selector "h1", text: "Score Categories"
  end

  test "creating a Score category" do
    visit score_categories_url
    click_on "New Score Category"

    fill_in "Name", with: @score_category.name
    click_on "Create Score category"

    assert_text "Score category was successfully created"
    click_on "Back"
  end

  test "updating a Score category" do
    visit score_categories_url
    click_on "Edit", match: :first

    fill_in "Name", with: @score_category.name
    click_on "Update Score category"

    assert_text "Score category was successfully updated"
    click_on "Back"
  end

  test "destroying a Score category" do
    visit score_categories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Score category was successfully destroyed"
  end
end
