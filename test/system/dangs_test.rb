require "application_system_test_case"

class DangsTest < ApplicationSystemTestCase
  setup do
    @dang = dangs(:one)
  end

  test "visiting the index" do
    visit dangs_url
    assert_selector "h1", text: "Dangs"
  end

  test "should create dang" do
    visit dangs_url
    click_on "New dang"

    fill_in "Body", with: @dang.body
    fill_in "Title", with: @dang.title
    click_on "Create Dang"

    assert_text "Dang was successfully created"
    click_on "Back"
  end

  test "should update Dang" do
    visit dang_url(@dang)
    click_on "Edit this dang", match: :first

    fill_in "Body", with: @dang.body
    fill_in "Title", with: @dang.title
    click_on "Update Dang"

    assert_text "Dang was successfully updated"
    click_on "Back"
  end

  test "should destroy Dang" do
    visit dang_url(@dang)
    click_on "Destroy this dang", match: :first

    assert_text "Dang was successfully destroyed"
  end
end
