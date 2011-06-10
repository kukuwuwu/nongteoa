class CreateConferences < ActiveRecord::Migration
  def self.up
    create_table :conferences do |t|
      t.string :title, :null => false
      t.datetime :convoke_date, :null => false
      t.integer :conference_type_id, :default => 0
      t.integer :conference_state_id, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :conferences
  end
end
