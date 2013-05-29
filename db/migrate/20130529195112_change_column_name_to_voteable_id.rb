class ChangeColumnNameToVoteableId < ActiveRecord::Migration
  def up
  	rename_column("votes", "post_id", "voteable_id")
  end

  def down
  end
end
