class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :category_id
      t.text :name
      t.text :content
      t.timestamps
    end
  end
end
