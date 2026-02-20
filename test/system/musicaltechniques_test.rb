require "application_system_test_case"

class MusicaltechniquesTest < ApplicationSystemTestCase
  setup do
    @musicaltechnique = musicaltechniques(:one)
  end

  test "visiting the index" do
    visit musicaltechniques_url
    assert_selector "h1", text: "Musicaltechniques"
  end

  test "should create musicaltechnique" do
    visit musicaltechniques_url
    click_on "New musicaltechnique"

    fill_in "Maxvalue", with: @musicaltechnique.maxvalue
    fill_in "Minvalue", with: @musicaltechnique.minvalue
    fill_in "Musicalinstrument", with: @musicaltechnique.musicalinstrument_id
    fill_in "Myattribute", with: @musicaltechnique.myattribute
    fill_in "Name", with: @musicaltechnique.name
    click_on "Create Musicaltechnique"

    assert_text "Musicaltechnique was successfully created"
    click_on "Back"
  end

  test "should update Musicaltechnique" do
    visit musicaltechnique_url(@musicaltechnique)
    click_on "Edit this musicaltechnique", match: :first

    fill_in "Maxvalue", with: @musicaltechnique.maxvalue
    fill_in "Minvalue", with: @musicaltechnique.minvalue
    fill_in "Musicalinstrument", with: @musicaltechnique.musicalinstrument_id
    fill_in "Myattribute", with: @musicaltechnique.myattribute
    fill_in "Name", with: @musicaltechnique.name
    click_on "Update Musicaltechnique"

    assert_text "Musicaltechnique was successfully updated"
    click_on "Back"
  end

  test "should destroy Musicaltechnique" do
    visit musicaltechnique_url(@musicaltechnique)
    click_on "Destroy this musicaltechnique", match: :first

    assert_text "Musicaltechnique was successfully destroyed"
  end
end
