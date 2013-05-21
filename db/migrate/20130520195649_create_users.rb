class CreateUsers < ActiveRecord::Migration
  def up
  	create_table :users do |t|
  		t.string :username
  		t.string :name
  	end
  end

  def down
  end
end
