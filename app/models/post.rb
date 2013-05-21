class Post < ActiveRecord::Base
	belongs_to :user
	has_many :post_has_categories
	has_many :categories, :through => :post_has_categories
	has_many :comments, :dependent => :destroy
end