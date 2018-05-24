class AddUserIdTimeToPost < ActiveRecord::Migration[5.1]
  def change
    add_column :posts, :user_id, :integer
    add_column :posts, :display_day, :integer
    add_column :posts, :display_time, :integer
  end
end
