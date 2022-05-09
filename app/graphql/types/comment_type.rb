# frozen_string_literal: true

module Types
  class CommentType < Types::BaseObject
    field :id, ID, null: false
    field :text, String, null: false
    #field :modified, Boolean
    field :user_id, Integer, null: false
    field :post_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user, Types::UserType
    field :username, String
    def username
      object.user.username
    end

    field :reactions, [Types::ReactionType]
  end
end
