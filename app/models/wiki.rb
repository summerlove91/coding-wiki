class Wiki < ApplicationRecord
  belongs_to :user, optional: true
  has_many :collaborators

  has_many :comments


  scope :visible_to, -> (user) { user ? all : where(private: false) }
  #
  # def publicize
  #   update_attribute(:private, false)
  # ends

  # after_initialize :initialize_role

  private

  def initialize_role
    self.private = false if self.private.nil?
  end
  # validates :title, length: { minimum: 5 }, presence: true
  # validates :body, length: { minimum: 20 }, presence: true
  # validates :user, presence: true
end
