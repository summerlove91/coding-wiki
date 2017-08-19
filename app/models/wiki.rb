class Wiki < ApplicationRecord
  belongs_to :user


  scope :visible_to, -> (user) { user ? all : where(private: false) }

  def publicize
    update_attribute(:private, false)
  end

  # validates :title, length: { minimum: 5 }, presence: true
  # validates :body, length: { minimum: 20 }, presence: true
  # validates :user, presence: true
end
