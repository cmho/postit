class Post < ActiveRecord::Base
	belongs_to :user
	has_many :post_has_categories
	has_many :categories, :through => :post_has_categories
	has_many :comments, :dependent => :destroy
	accepts_nested_attributes_for :comments
	accepts_nested_attributes_for :categories
	accepts_nested_attributes_for :post_has_categories
	validates_presence_of :title, :description
end