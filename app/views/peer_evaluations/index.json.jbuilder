# frozen_string_literal: true

json.array! @peer_evaluations, partial: 'peer_evaluations/peer_evaluation', as: :peer_evaluation
