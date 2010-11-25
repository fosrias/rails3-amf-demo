class CreatePostAuthors < ActiveRecord::Migration
  def self.up
    create_table :post_authors do |t|
      t.integer :post_id
      t.string :name

      t.timestamps
    end
  end

  def self.down
    drop_table :post_authors
  end
end
