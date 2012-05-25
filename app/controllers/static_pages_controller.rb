class StaticPagesController < ApplicationController
  def home
    if signed_in?
      @auctionitem = AuctionItem.first # THIS NEEDS TO CHANGE!!!!
      @auction_items = current_user.auction_pages.all
    end        
  end

  def help
  end

  def contact
  end

  def about
  end
end
