require "test_helper"

class ScoreCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @score_category = score_categories(:one)
  end

  test "should get index" do
    get score_categories_url
    assert_response :success
  end

  test "should get new" do
    get new_score_category_url
    assert_response :success
  end

  test "should create score_category" do
    assert_difference('ScoreCategory.count') do
      post score_categories_url, params: { score_category: { name: @score_category.name } }
    end

    assert_redirected_to score_category_url(ScoreCategory.last)
  end

  test "should show score_category" do
    get score_category_url(@score_category)
    assert_response :success
  end

  test "should get edit" do
    get edit_score_category_url(@score_category)
    assert_response :success
  end

  test "should update score_category" do
    patch score_category_url(@score_category), params: { score_category: { name: @score_category.name } }
    assert_redirected_to score_category_url(@score_category)
  end

  test "should destroy score_category" do
    assert_difference('ScoreCategory.count', -1) do
      delete score_category_url(@score_category)
    end

    assert_redirected_to score_categories_url
  end
end
