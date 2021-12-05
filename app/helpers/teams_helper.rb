module TeamsHelper
    def evals_done? team
        PeerEvaluation.where(team_id: team.id).collect.each do |eval|
            return false unless eval.completed
        end
        true
    end
end
