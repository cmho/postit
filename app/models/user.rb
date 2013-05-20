class User < ActiveRecord::Base
	has_secure_password

	validates_presence_of :username
	validates_uniqueness_of :username

	attr_accessible :username, :password, :password_confirmation

	has_many :posts

	def self.authenticate(username, password)
		find_by_username(username).try(:authenticate, password)
	end
end