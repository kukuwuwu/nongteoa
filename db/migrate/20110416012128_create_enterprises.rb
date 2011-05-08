class CreateEnterprises < ActiveRecord::Migration
  def self.up
    create_table :enterprises do |t|
      t.integer :admin_id
      t.string :title
      t.integer :province_id
      t.integer :city_id
      t.integer :industry_id
      t.string :fax_num
      t.string :phone_num
      t.string :address
      t.string :zip_code
      t.string :mail
      t.string :site
      t.string :qq
      t.string :remark
      t.string :trademark
      t.text :product
      t.text :introduction
      t.integer :status

      t.timestamps
    end
  end

  def self.down
    drop_table :enterprises
  end
end
