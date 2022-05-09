# frozen_string_literal: true

module Mutations
  class PostDelete < BaseMutation
    description "Deletes a post by ID"

    argument :id, ID, required: true

    type Types::PostType

    def resolve(id:)
      post = ::Post.find(id)
      post.destroy
      post
    end
  end
end
