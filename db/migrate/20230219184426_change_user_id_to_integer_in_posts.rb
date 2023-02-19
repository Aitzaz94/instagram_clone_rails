class ChangeUserIdToIntegerInPosts < ActiveRecord::Migration[7.0]
  def change
    change_column :posts, :user_id, :integer
  end
end
