class Category < ActiveRecord::Base
	has_many :post_has_categories
	has_many :posts, :through => :post_has_categories
end