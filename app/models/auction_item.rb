class AuctionItem < ActiveRecord::Base
  attr_accessible :description, :end_date, :name, :start_date
  belongs_to :user

  validates :user_id, presence: true

  # default_scope order: 'AuctionItems.created_at DESC'
end
