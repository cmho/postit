class User < ActiveRecord::Base
	has_secure_password

	validates_presence_of :username, :password
	validates_presence_of :password_confirmation
	validates_uniqueness_of :username

	attr_accessible :username, :name, :password, :password_confirmation

	has_many :posts
	has_many :comments
	has_many :votes

	def self.authenticate(username, password)
		find_by_username(username).try(:authenticate, password)
	end
end