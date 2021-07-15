class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.text :author
      t.text :body

      t.timestamps
    end
    add_index :posts, :body
  end
end
