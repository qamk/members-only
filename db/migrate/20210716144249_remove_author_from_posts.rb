class RemoveAuthorFromPosts < ActiveRecord::Migration[6.1]
  def up
    remove_column :posts, :author, type: :text, null: false
  end

  def down
    add_column :posts, :author, :text, null: false
  end
end
