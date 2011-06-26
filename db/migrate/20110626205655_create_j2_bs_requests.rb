class CreateJ2BsRequests < ActiveRecord::Migration
  def self.up
    create_table :j2_bs_requests do |t|
      t.string :order_id
      t.string :customer_id
      t.string :store_id
      t.decimal :price
      t.string :description
      t.string :status

      t.timestamps
    end
  end

  def self.down
    drop_table :j2_bs_requests
  end
end
