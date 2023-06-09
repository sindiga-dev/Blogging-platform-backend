class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, id: false do |t|
      t.integer :id
      t.string :title
      t.text :content
      t.integer :user_id
      t.integer :post_id

      t.timestamps
    end
  end
end
