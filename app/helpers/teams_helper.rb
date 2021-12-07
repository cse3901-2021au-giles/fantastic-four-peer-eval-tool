# frozen_string_literal: true

# Defines helpers to be used with teams
module TeamsHelper
  def evals_done?(team)
    PeerEvaluation.where(team_id: team.id).collect.each do |eval|
      return false unless eval.completed
    end
    true
  end
end
