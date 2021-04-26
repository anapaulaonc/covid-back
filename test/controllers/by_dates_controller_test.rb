require "test_helper"

class ByDatesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @by_date = by_dates(:one)
  end

  test "should get index" do
    get by_dates_url, as: :json
    assert_response :success
  end

  test "should create by_date" do
    assert_difference('ByDate.count') do
      post by_dates_url, params: { by_date: { cases: @by_date.cases, datetime: @by_date.datetime, deaths: @by_date.deaths, initials: @by_date.initials, name: @by_date.name, suspects: @by_date.suspects } }, as: :json
    end

    assert_response 201
  end

  test "should show by_date" do
    get by_date_url(@by_date), as: :json
    assert_response :success
  end

  test "should update by_date" do
    patch by_date_url(@by_date), params: { by_date: { cases: @by_date.cases, datetime: @by_date.datetime, deaths: @by_date.deaths, initials: @by_date.initials, name: @by_date.name, suspects: @by_date.suspects } }, as: :json
    assert_response 200
  end

  test "should destroy by_date" do
    assert_difference('ByDate.count', -1) do
      delete by_date_url(@by_date), as: :json
    end

    assert_response 204
  end
end
