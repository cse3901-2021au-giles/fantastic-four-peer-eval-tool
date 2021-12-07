# frozen_string_literal: true

json.extract! membership, :id, :user_id, :team_id, :created_at, :updated_at
json.url project_url(membership, format: :json)
