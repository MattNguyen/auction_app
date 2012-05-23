class CreateAuctionItems < ActiveRecord::Migration
  def change
    create_table :auction_items do |t|
      t.string :name
      t.date :start_date
      t.date :end_date
      t.text :description

      t.timestamps
    end
  end
end
