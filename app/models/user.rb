class User < ApplicationRecord
  has_many :wikis

  before_save { self.email = email.downcase if email.present? }
  # before_save { self.role ||= :standard }
  # before_action :authenticate_user!

  validates :name, length: { minimum: 1, maximum: 100 }, presence: true
  validates :password, presence: true, length: { minimum: 6 }, if: "password_digest.nil?"
  validates :password, length: { minimum: 6 }, allow_blank: true
  validates :email,
            presence: true,
            uniqueness: { case_sensitive: false },
            length: { minimum: 3, maximum: 254 }

  has_secure_password
  
  def going_public
    self.wikis.each { |wiki| puts wiki.publicize }
  end

  # enum role [:standard, :admin, :premium]
end
