# frozen_string_literal: true

module Mutations
  class PostUpdate < BaseMutation
    description "Updates a post by id"

    argument :id, Integer, required: true
    argument :text, String, required: false
    argument :user_id, Integer, required: false

    type Types::PostType

    def resolve(id:, **attributes)
      post = Post.find(id)
      post.update!(attributes)
      post
    end
  end
end
