class CreateActions < ActiveRecord::Migration
  def self.up
    create_table :actions, :id => false do |t|
      t.string :code
      t.string :label
      t.integer :position

      t.timestamps
    end
  end

  def self.down
    drop_table :actions
  end
end
