# frozen_string_literal: true

module Mutations
  class UserDelete < BaseMutation
    description "Deletes a user by ID"

    argument :id, ID, required: true

    type Types::UserType

    def resolve(id:)
      user = ::User.find(id)
      user.destroy
      user
    end
  end
end
