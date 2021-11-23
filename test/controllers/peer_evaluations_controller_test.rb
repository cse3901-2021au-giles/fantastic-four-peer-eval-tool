require "test_helper"

class PeerEvaluationsControllerTest < ActionDispatch::IntegrationTest
  setup do
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

  test "should get edit" do
    get edit_peer_evaluation_url(@peer_evaluation)
    assert_response :success
  end
end
