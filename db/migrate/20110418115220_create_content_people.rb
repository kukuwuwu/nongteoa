class CreateContentPeople < ActiveRecord::Migration
  def self.up
    create_table :content_people do |t|
      t.integer :enterprise_id
      t.integer :sex, :default => 0, :null => false
      t.string :name, :null => false
      t.string :position, :null => false
      t.string :phone_num
      t.string :mobile_num
      t.string :fax_num
      t.string :mail
      t.string :address
      t.string :zip_code
      t.integer :is_main
      t.string :remark

      t.timestamps
    end
  end

  def self.down
    drop_table :content_people
  end
end
