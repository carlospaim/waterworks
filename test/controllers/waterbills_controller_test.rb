require 'test_helper'

class WaterbillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @waterbill = waterbills(:one)
  end

  test "should get index" do
    get waterbills_url
    assert_response :success
  end

  test "should get new" do
    get new_waterbill_url
    assert_response :success
  end

  test "should create waterbill" do
    assert_difference('Waterbill.count') do
      post waterbills_url, params: { waterbill: { comsumer: @waterbill.comsumer, consumption: @waterbill.consumption, month: @waterbill.month, year: @waterbill.year } }
    end

    assert_redirected_to waterbill_url(Waterbill.last)
  end

  test "should show waterbill" do
    get waterbill_url(@waterbill)
    assert_response :success
  end

  test "should get edit" do
    get edit_waterbill_url(@waterbill)
    assert_response :success
  end

  test "should update waterbill" do
    patch waterbill_url(@waterbill), params: { waterbill: { comsumer: @waterbill.comsumer, consumption: @waterbill.consumption, month: @waterbill.month, year: @waterbill.year } }
    assert_redirected_to waterbill_url(@waterbill)
  end

  test "should destroy waterbill" do
    assert_difference('Waterbill.count', -1) do
      delete waterbill_url(@waterbill)
    end

    assert_redirected_to waterbills_url
  end
end
