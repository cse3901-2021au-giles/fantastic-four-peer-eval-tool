# frozen_string_literal: true

require 'test_helper'

class TeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = users(:michael)
    post login_path, params: { session: { email: @user.email, password: 'password' } }
    @team = teams(:one)
    @team.project_id = projects(:one).id
  end

  test 'should get index' do
    get teams_url
    assert_response :success
  end

  test 'should get new' do
    get new_team_url
    assert_response :success
  end

  test 'should create team' do
    assert_difference('Team.count') do
      post teams_url, params: { team: { name: @team.name, project_id: @team.project_id } }
    end

    assert_redirected_to team_url(Team.last)
  end

  test 'should show team' do
    get team_url(@team)
    assert_response :success
  end

  test 'should get edit' do
    get edit_team_url(@team)
    assert_response :success
  end

  test 'should update team' do
    patch team_url(@team), params: { team: { name: @team.name } }
  end

  test 'should destroy team' do
    assert_difference('Team.count', -1) do
      delete team_url(@team)
    end

    assert_redirected_to teams_url
  end
end
