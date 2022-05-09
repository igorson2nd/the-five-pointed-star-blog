# frozen_string_literal: true

module Mutations
  class CommentCreate < BaseMutation
    description "Creates a new comment"

    argument :text, String, required: true
    argument :user_id, Integer, required: true
    argument :post_id, Integer, required: true

    type Types::CommentType

    def resolve(**attributes)
      Comment.create!(**attributes)
    end
  end
end
