require "test_helper"

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:michael)
    post login_path, params: { session: { email:    @user.email, password: 'password' } }
    @review = reviews(:one)
  end

  test "should get index" do
    get reviews_url
    assert_response :success
  end

  test "should get new" do
    get new_review_url
    assert_response :success
  end

  test "should show review" do
    get review_url(@review)
    assert_response :success
  end

  test "should get edit" do
    get edit_review_url(@review)
    assert_response :success
  end
end
