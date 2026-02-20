require "test_helper"

class MusicaltechniquescoresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musicaltechniquescore = musicaltechniquescores(:one)
  end

  test "should get index" do
    get musicaltechniquescores_url
    assert_response :success
  end

  test "should get new" do
    get new_musicaltechniquescore_url
    assert_response :success
  end

  test "should create musicaltechniquescore" do
    assert_difference("Musicaltechniquescore.count") do
      post musicaltechniquescores_url, params: { musicaltechniquescore: { musicaltechnique_id: @musicaltechniquescore.musicaltechnique_id, mypercent: @musicaltechniquescore.mypercent, myvalue: @musicaltechniquescore.myvalue, score_id: @musicaltechniquescore.score_id, thismomentvalue: @musicaltechniquescore.thismomentvalue } }
    end

    assert_redirected_to musicaltechniquescore_url(Musicaltechniquescore.last)
  end

  test "should show musicaltechniquescore" do
    get musicaltechniquescore_url(@musicaltechniquescore)
    assert_response :success
  end

  test "should get edit" do
    get edit_musicaltechniquescore_url(@musicaltechniquescore)
    assert_response :success
  end

  test "should update musicaltechniquescore" do
    patch musicaltechniquescore_url(@musicaltechniquescore), params: { musicaltechniquescore: { musicaltechnique_id: @musicaltechniquescore.musicaltechnique_id, mypercent: @musicaltechniquescore.mypercent, myvalue: @musicaltechniquescore.myvalue, score_id: @musicaltechniquescore.score_id, thismomentvalue: @musicaltechniquescore.thismomentvalue } }
    assert_redirected_to musicaltechniquescore_url(@musicaltechniquescore)
  end

  test "should destroy musicaltechniquescore" do
    assert_difference("Musicaltechniquescore.count", -1) do
      delete musicaltechniquescore_url(@musicaltechniquescore)
    end

    assert_redirected_to musicaltechniquescores_url
  end
end
