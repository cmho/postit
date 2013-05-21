class CreatePosts < ActiveRecord::Migration
  def up
  	create_table :posts do |t|
  		t.string :title
  		t.string :url
  		t.text :description
  	end
  end

  def down
  end
end
