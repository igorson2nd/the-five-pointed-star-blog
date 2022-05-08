class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy 
  
  def can_edit(current_user)
    return current_user == user
  end
end
