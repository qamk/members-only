class ChangeTitleInPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :title, :text, if_exists: true
    add_column :posts, :title, :text, default: '--secret--', null: false
  end
end
