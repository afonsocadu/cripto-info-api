class User < ApplicationRecord
  include DeviseTokenAuth::Concerns::User

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable,
         :registerable,
         :recoverable,
         :rememberable,
         :validatable

  has_many :stored_infos
  has_one :encryption_key, dependent: :destroy


  after_create :create_encryption_key

  private

  # Creates an encryption key for the user
  def create_encryption_key
    EncryptionKey.create_encryption_key_for_user(self)
  end
end
