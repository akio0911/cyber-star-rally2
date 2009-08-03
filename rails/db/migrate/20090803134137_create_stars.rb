class CreateStars < ActiveRecord::Migration
  def self.up
    create_table :stars do |t|
      t.integer :id
      t.string :title
      t.float :lat
      t.float :lng

      t.timestamps
    end
  end

  def self.down
    drop_table :stars
  end
end
