require "test_helper"

class MusicsymbolsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musicsymbol = musicsymbols(:one)
  end

  test "should get index" do
    get musicsymbols_url
    assert_response :success
  end

  test "should get new" do
    get new_musicsymbol_url
    assert_response :success
  end

  test "should create musicsymbol" do
    assert_difference("Musicsymbol.count") do
      post musicsymbols_url, params: { musicsymbol: { musicsymboltype_id: @musicsymbol.musicsymboltype_id, name: @musicsymbol.name } }
    end

    assert_redirected_to musicsymbol_url(Musicsymbol.last)
  end

  test "should show musicsymbol" do
    get musicsymbol_url(@musicsymbol)
    assert_response :success
  end

  test "should get edit" do
    get edit_musicsymbol_url(@musicsymbol)
    assert_response :success
  end

  test "should update musicsymbol" do
    patch musicsymbol_url(@musicsymbol), params: { musicsymbol: { musicsymboltype_id: @musicsymbol.musicsymboltype_id, name: @musicsymbol.name } }
    assert_redirected_to musicsymbol_url(@musicsymbol)
  end

  test "should destroy musicsymbol" do
    assert_difference("Musicsymbol.count", -1) do
      delete musicsymbol_url(@musicsymbol)
    end

    assert_redirected_to musicsymbols_url
  end
end
