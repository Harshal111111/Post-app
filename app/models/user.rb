require 'digest'

class User < ApplicationRecord
  has_many :posts

  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true

  def password=(password)
    self.password_digest = encrypt(password)
  end

  def authenticate(password)
    encrypt(password) == password_digest
  end

  private

  def encrypt(password)
    Digest::SHA256.hexdigest(password)
  end
end
