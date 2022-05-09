# frozen_string_literal: true

module Types
  class ReactionType < Types::BaseObject
    field :id, ID, null: false
    field :reaction_type, String
    field :user_id, Integer, null: false
    field :comment_id, Integer, null: false
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
    field :user, Types::UserType
    field :username, String
    def username
      object.user.username
    end
  end
end
