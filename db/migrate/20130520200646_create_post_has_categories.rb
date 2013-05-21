class CreatePostHasCategories < ActiveRecord::Migration
  def change
    create_table :post_has_categories do |t|
      t.integer :post_id
      t.integer :category_id

      t.timestamps
    end
  end
end
