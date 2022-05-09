# frozen_string_literal: true

module Mutations
  class UserCreate < BaseMutation
    description "Creates a new user"

    argument :username, String, required: true

    type Types::UserType

    def resolve(username: nil)
      User.create!(username: username)
    end
  end
end
