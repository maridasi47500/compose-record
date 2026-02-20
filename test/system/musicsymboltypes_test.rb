require "application_system_test_case"

class MusicsymboltypesTest < ApplicationSystemTestCase
  setup do
    @musicsymboltype = musicsymboltypes(:one)
  end

  test "visiting the index" do
    visit musicsymboltypes_url
    assert_selector "h1", text: "Musicsymboltypes"
  end

  test "should create musicsymboltype" do
    visit musicsymboltypes_url
    click_on "New musicsymboltype"

    fill_in "Name", with: @musicsymboltype.name
    click_on "Create Musicsymboltype"

    assert_text "Musicsymboltype was successfully created"
    click_on "Back"
  end

  test "should update Musicsymboltype" do
    visit musicsymboltype_url(@musicsymboltype)
    click_on "Edit this musicsymboltype", match: :first

    fill_in "Name", with: @musicsymboltype.name
    click_on "Update Musicsymboltype"

    assert_text "Musicsymboltype was successfully updated"
    click_on "Back"
  end

  test "should destroy Musicsymboltype" do
    visit musicsymboltype_url(@musicsymboltype)
    click_on "Destroy this musicsymboltype", match: :first

    assert_text "Musicsymboltype was successfully destroyed"
  end
end
