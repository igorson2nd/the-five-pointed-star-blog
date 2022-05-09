module Types
  class MutationType < Types::BaseObject
    field :reaction_create, mutation: Mutations::ReactionCreate
    field :comment_create, mutation: Mutations::CommentCreate
    field :post_delete, mutation: Mutations::PostDelete
    field :post_update, mutation: Mutations::PostUpdate
    field :post_create, mutation: Mutations::PostCreate
    field :user_delete, mutation: Mutations::UserDelete
    field :user_update, mutation: Mutations::UserUpdate
    field :user_create, mutation: Mutations::UserCreate
  end
end
