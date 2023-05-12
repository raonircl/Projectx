require "application_system_test_case"

class CrudsTest < ApplicationSystemTestCase
  setup do
    @crud = cruds(:one)
  end

  test "visiting the index" do
    visit cruds_url
    assert_selector "h1", text: "Cruds"
  end

  test "should create crud" do
    visit cruds_url
    click_on "New crud"

    fill_in "Age", with: @crud.age
    fill_in "Name", with: @crud.name
    click_on "Create Crud"

    assert_text "Crud was successfully created"
    click_on "Back"
  end

  test "should update Crud" do
    visit crud_url(@crud)
    click_on "Edit this crud", match: :first

    fill_in "Age", with: @crud.age
    fill_in "Name", with: @crud.name
    click_on "Update Crud"

    assert_text "Crud was successfully updated"
    click_on "Back"
  end

  test "should destroy Crud" do
    visit crud_url(@crud)
    click_on "Destroy this crud", match: :first

    assert_text "Crud was successfully destroyed"
  end
end
