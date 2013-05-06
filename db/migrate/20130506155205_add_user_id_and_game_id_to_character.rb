class AddUserIdAndGameIdToCharacter < ActiveRecord::Migration
  def change
    add_column :characters, :user_id, :integer
    add_column :characters, :game_id, :integer
  end
end
