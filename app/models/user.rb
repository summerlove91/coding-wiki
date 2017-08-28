class User < ApplicationRecord
  has_many :wikis, dependent: :destroy
  has_many :comments
  # has_many :collaborators

  before_save { self.email = email.downcase if email.present? }

  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

  has_secure_password

  def self.going_public(user)
    @wikis = user.wikis.where(private: true)
    @wikis.each do |wiki|
      wiki.update_attribute(:private, false)
    end
  end

  private

  def initialize_role
    self.role ||= :standard
  end
  # enum role [:standard, :admin, :premium]
end
