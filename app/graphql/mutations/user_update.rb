# frozen_string_literal: true

module Mutations
  class UserUpdate < BaseMutation
    description "Updates a user by id"

    argument :id, ID, required: true
    argument :username, String, required: true

    type Types::UserType

    def resolve(id: nil, username: nil)
      user = User.find(id)
      user.update!(username: username)
      user
    end
  end
end
