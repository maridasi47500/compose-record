require "application_system_test_case"

class MusicsymbolsTest < ApplicationSystemTestCase
  setup do
    @musicsymbol = musicsymbols(:one)
  end

  test "visiting the index" do
    visit musicsymbols_url
    assert_selector "h1", text: "Musicsymbols"
  end

  test "should create musicsymbol" do
    visit musicsymbols_url
    click_on "New musicsymbol"

    fill_in "Musicsymboltype", with: @musicsymbol.musicsymboltype_id
    fill_in "Name", with: @musicsymbol.name
    click_on "Create Musicsymbol"

    assert_text "Musicsymbol was successfully created"
    click_on "Back"
  end

  test "should update Musicsymbol" do
    visit musicsymbol_url(@musicsymbol)
    click_on "Edit this musicsymbol", match: :first

    fill_in "Musicsymboltype", with: @musicsymbol.musicsymboltype_id
    fill_in "Name", with: @musicsymbol.name
    click_on "Update Musicsymbol"

    assert_text "Musicsymbol was successfully updated"
    click_on "Back"
  end

  test "should destroy Musicsymbol" do
    visit musicsymbol_url(@musicsymbol)
    click_on "Destroy this musicsymbol", match: :first

    assert_text "Musicsymbol was successfully destroyed"
  end
end
