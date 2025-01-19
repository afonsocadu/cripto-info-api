class EncryptionKey < ApplicationRecord
  belongs_to :user

  attr_encrypted :encrypted_key, key: [ENV['ENCRYPTION_KEY']].pack('H*')

  # Creates an encryption key for the user
  def self.create_encryption_key_for_user(user)
    key = SecureRandom.random_bytes(32)
    encryption_key = EncryptionKey.create!(user: user, encrypted_key: key)
    encryption_key
  end
end
