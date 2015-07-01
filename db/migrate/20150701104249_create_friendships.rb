class CreateFriendships < ActiveRecord::Migration
  def up
    create_table :friendships do |t|
      t.references :user, index: true
      t.integer :friend_id

      t.timestamps
    end
  end
  def down
    drop_table :friendships
  end
end
