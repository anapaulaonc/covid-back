require "test_helper"

class ByMonthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @by_month = by_months(:one)
  end

  test "should get index" do
    get by_months_url, as: :json
    assert_response :success
  end

  test "should create by_month" do
    assert_difference('ByMonth.count') do
      post by_months_url, params: { by_month: { cases: @by_month.cases, datetime: @by_month.datetime, deaths: @by_month.deaths, initials: @by_month.initials, name: @by_month.name, suspects: @by_month.suspects } }, as: :json
    end

    assert_response 201
  end

  test "should show by_month" do
    get by_month_url(@by_month), as: :json
    assert_response :success
  end

  test "should update by_month" do
    patch by_month_url(@by_month), params: { by_month: { cases: @by_month.cases, datetime: @by_month.datetime, deaths: @by_month.deaths, initials: @by_month.initials, name: @by_month.name, suspects: @by_month.suspects } }, as: :json
    assert_response 200
  end

  test "should destroy by_month" do
    assert_difference('ByMonth.count', -1) do
      delete by_month_url(@by_month), as: :json
    end

    assert_response 204
  end
end
