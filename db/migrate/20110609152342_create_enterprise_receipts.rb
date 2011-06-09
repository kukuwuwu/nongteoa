class CreateEnterpriseReceipts < ActiveRecord::Migration
  def self.up
    create_table :enterprise_receipts do |t|
      t.integer :enterprise_id, :null => false
      t.string :title, :null => false
      t.string :tax_num, :null => false
      t.boolean :is_main, :default => 0

      t.timestamps
    end
  end

  def self.down
    drop_table :enterprise_receipts
  end
end
