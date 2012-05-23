class AuctionItemsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]

  def index
  end

  def show
    @user = AuctionItem.first.name
  end

  def new
    @auctionitem = AuctionItem.new
  end

  def create
    @auctionitem = current_user.auction_items.build(params[:auction_item])
    if @auctionitem.save
      flash[:success] = "New auction created!"
      redirect_to root_path
    else
      render 'static_pages/home'
    end
  end

  def destroy
  end
end
