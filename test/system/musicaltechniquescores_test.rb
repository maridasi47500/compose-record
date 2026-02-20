require "application_system_test_case"

class MusicaltechniquescoresTest < ApplicationSystemTestCase
  setup do
    @musicaltechniquescore = musicaltechniquescores(:one)
  end

  test "visiting the index" do
    visit musicaltechniquescores_url
    assert_selector "h1", text: "Musicaltechniquescores"
  end

  test "should create musicaltechniquescore" do
    visit musicaltechniquescores_url
    click_on "New musicaltechniquescore"

    fill_in "Musicaltechnique", with: @musicaltechniquescore.musicaltechnique_id
    fill_in "Mypercent", with: @musicaltechniquescore.mypercent
    fill_in "Myvalue", with: @musicaltechniquescore.myvalue
    fill_in "Score", with: @musicaltechniquescore.score_id
    fill_in "Thismomentvalue", with: @musicaltechniquescore.thismomentvalue
    click_on "Create Musicaltechniquescore"

    assert_text "Musicaltechniquescore was successfully created"
    click_on "Back"
  end

  test "should update Musicaltechniquescore" do
    visit musicaltechniquescore_url(@musicaltechniquescore)
    click_on "Edit this musicaltechniquescore", match: :first

    fill_in "Musicaltechnique", with: @musicaltechniquescore.musicaltechnique_id
    fill_in "Mypercent", with: @musicaltechniquescore.mypercent
    fill_in "Myvalue", with: @musicaltechniquescore.myvalue
    fill_in "Score", with: @musicaltechniquescore.score_id
    fill_in "Thismomentvalue", with: @musicaltechniquescore.thismomentvalue
    click_on "Update Musicaltechniquescore"

    assert_text "Musicaltechniquescore was successfully updated"
    click_on "Back"
  end

  test "should destroy Musicaltechniquescore" do
    visit musicaltechniquescore_url(@musicaltechniquescore)
    click_on "Destroy this musicaltechniquescore", match: :first

    assert_text "Musicaltechniquescore was successfully destroyed"
  end
end
