class Vote < ActiveRecord::Base
  attr_accessible :post_id, :user_id, :vote

  belongs_to :user
  belongs_to :voteable, polymorphic: true
end
