require "test_helper"

class BrazilDataControllerTest < ActionDispatch::IntegrationTest
  setup do
    @brazil_ = brazil_data(:one)
  end

  test "should get index" do
    get brazil_data_url, as: :json
    assert_response :success
  end

  test "should create brazil_" do
    assert_difference('Brazil.count') do
      post brazil_data_url, params: { brazil_: { cases: @brazil_.cases, confirmer: @brazil_.confirmer, country: @brazil_.country, datetime: @brazil_.datetime, deaths: @brazil_.deaths } }, as: :json
    end

    assert_response 201
  end

  test "should show brazil_" do
    get brazil__url(@brazil_), as: :json
    assert_response :success
  end

  test "should update brazil_" do
    patch brazil__url(@brazil_), params: { brazil_: { cases: @brazil_.cases, confirmer: @brazil_.confirmer, country: @brazil_.country, datetime: @brazil_.datetime, deaths: @brazil_.deaths } }, as: :json
    assert_response 200
  end

  test "should destroy brazil_" do
    assert_difference('Brazil.count', -1) do
      delete brazil__url(@brazil_), as: :json
    end

    assert_response 204
  end
end
