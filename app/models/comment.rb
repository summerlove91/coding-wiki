class Comment < ApplicationRecord
  belongs_to :wiki
  belongs_to :user, optional: true

  # validates :body, length: { minimum: 5 }, presence: true
  # validates :user, presence: true
end
