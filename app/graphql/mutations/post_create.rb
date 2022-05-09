# frozen_string_literal: true

module Mutations
  class PostCreate < BaseMutation
    description "Creates a new post"

    argument :text, String, required: true
    argument :user_id, Integer, required: true

    type Types::PostType

    def resolve(**attributes)
      Post.create!(**attributes)
    end
  end
end
