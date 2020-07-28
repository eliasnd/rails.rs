class User < ApplicationRecord

	has_secure_password

	validates :username, presence: true
	validates_uniqueness_of :username
	validates :password, presence: true, length: { minimum: 8 }

	has_many :translations

end
