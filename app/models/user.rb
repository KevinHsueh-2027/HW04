class User < ApplicationRecord
end
class User < ApplicationRecord
  has_many :entries

  def password=(plaintext_password)
    self[:password] = BCrypt::Password.create(plaintext_password)
  end

  def authenticate(plaintext_password)
    BCrypt::Password.new(self[:password]) == plaintext_password
  end
end