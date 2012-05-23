class AddUserIdToAuctionItems < ActiveRecord::Migration
  def change
    add_column :auction_items, :user_id, :integer
    add_index :auction_items, [:user_id, :created_at]
  end
end
