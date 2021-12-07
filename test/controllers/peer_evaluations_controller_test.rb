require "test_helper"

class PeerEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:michael)
    post login_path, params: { session: { email:    @user.email, password: 'password' } }
    @peer_evaluation = peer_evaluations(:one)
  end

  test "should get index" do
    get peer_evaluations_url
    assert_response :success
  end

  test "should get new" do
    get new_peer_evaluation_url
    assert_response :success
  end

  test "should show peer_evaluation" do
    get peer_evaluation_url(@peer_evaluation)
    assert_response :success
  end
end
