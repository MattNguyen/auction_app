require 'spec_helper'

describe AuctionItem do
  before do
    @auction_item = AuctionItem.new(
                        name: "Example Item",
                        start_date: "2012-05-20",
                        end_date: "2012-05-25",
                        description: "This is an example item")
  end

  subject { @auction_item }

  it { should respond_to(:name) }
  it { should respond_to(:start_date) }
  it { should respond_to(:end_date) }
  it { should respond_to(:description) }

  it { should be_valid }
end
