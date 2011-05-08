class CreateContentPeople < ActiveRecord::Migration
  def self.up
    create_table :content_people do |t|
      t.integer :enterprise_id
      t.string :name
      t.string :position
      t.string :phone_num
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
