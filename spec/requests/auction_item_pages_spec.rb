require 'spec_helper'

describe "Auction Items" do
  subject { page }

  describe "auction item page" do
    before { visit auctionitems_path }
    it { should have_selector('title', text: 'Auction Items') }
    it { should have_selector('h1', text: 'Auction Items') }

    describe "new item link from index" do
      before { click_link "New item" }
      it { should have_selector('title', text: 'New Item') }
      it { should have_selector('h1', text: 'New Item') }
    end
  end

  describe "new items form" do 
    before { visit newauctionitems_path }
    it { should have_selector('title', text: 'New Item') }
    it { should have_selector('h1', text: 'New Item') }
  end
end
