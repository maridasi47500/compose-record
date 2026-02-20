require "test_helper"

class MusicaltechniquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musicaltechnique = musicaltechniques(:one)
  end

  test "should get index" do
    get musicaltechniques_url
    assert_response :success
  end

  test "should get new" do
    get new_musicaltechnique_url
    assert_response :success
  end

  test "should create musicaltechnique" do
    assert_difference("Musicaltechnique.count") do
      post musicaltechniques_url, params: { musicaltechnique: { maxvalue: @musicaltechnique.maxvalue, minvalue: @musicaltechnique.minvalue, musicalinstrument_id: @musicaltechnique.musicalinstrument_id, myattribute: @musicaltechnique.myattribute, name: @musicaltechnique.name } }
    end

    assert_redirected_to musicaltechnique_url(Musicaltechnique.last)
  end

  test "should show musicaltechnique" do
    get musicaltechnique_url(@musicaltechnique)
    assert_response :success
  end

  test "should get edit" do
    get edit_musicaltechnique_url(@musicaltechnique)
    assert_response :success
  end

  test "should update musicaltechnique" do
    patch musicaltechnique_url(@musicaltechnique), params: { musicaltechnique: { maxvalue: @musicaltechnique.maxvalue, minvalue: @musicaltechnique.minvalue, musicalinstrument_id: @musicaltechnique.musicalinstrument_id, myattribute: @musicaltechnique.myattribute, name: @musicaltechnique.name } }
    assert_redirected_to musicaltechnique_url(@musicaltechnique)
  end

  test "should destroy musicaltechnique" do
    assert_difference("Musicaltechnique.count", -1) do
      delete musicaltechnique_url(@musicaltechnique)
    end

    assert_redirected_to musicaltechniques_url
  end
end
