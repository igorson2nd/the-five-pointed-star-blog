# frozen_string_literal: true

module Mutations
  class ReactionCreate < BaseMutation
    description "Creates a new reaction"

    argument :reaction_type, String, required: true
    argument :user_id, Integer, required: true
    argument :comment_id, Integer, required: true

    type Types::ReactionType

    def resolve(**attributes)
      Reaction.create!(attributes)
    end
  end
end
