class CreateModerators < ActiveRecord::Migration
  def self.up
    create_table :moderators do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :moderators
  end
end
