class AddPostIdToModerator < ActiveRecord::Migration
  def self.up
    add_column :moderators, :post_id, :integer
  end

  def self.down
    remove_column :moderators, :post_id
  end
end
