class CreateLocations < ActiveRecord::Migration
  def self.up
    create_table :locations do |t|
      t.integer :id
      t.float :lat
      t.float :lng
      t.datetime :logging_at

      t.timestamps
    end
  end

  def self.down
    drop_table :locations
  end
end
