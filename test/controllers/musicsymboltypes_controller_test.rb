require "test_helper"

class MusicsymboltypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @musicsymboltype = musicsymboltypes(:one)
  end

  test "should get index" do
    get musicsymboltypes_url
    assert_response :success
  end

  test "should get new" do
    get new_musicsymboltype_url
    assert_response :success
  end

  test "should create musicsymboltype" do
    assert_difference("Musicsymboltype.count") do
      post musicsymboltypes_url, params: { musicsymboltype: { name: @musicsymboltype.name } }
    end

    assert_redirected_to musicsymboltype_url(Musicsymboltype.last)
  end

  test "should show musicsymboltype" do
    get musicsymboltype_url(@musicsymboltype)
    assert_response :success
  end

  test "should get edit" do
    get edit_musicsymboltype_url(@musicsymboltype)
    assert_response :success
  end

  test "should update musicsymboltype" do
    patch musicsymboltype_url(@musicsymboltype), params: { musicsymboltype: { name: @musicsymboltype.name } }
    assert_redirected_to musicsymboltype_url(@musicsymboltype)
  end

  test "should destroy musicsymboltype" do
    assert_difference("Musicsymboltype.count", -1) do
      delete musicsymboltype_url(@musicsymboltype)
    end

    assert_redirected_to musicsymboltypes_url
  end
end
