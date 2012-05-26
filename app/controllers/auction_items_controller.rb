class AuctionItemsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy

  def index
  end

  def show
    @auction_items = current_user.auction_pages.all
    @auctionitem = AuctionItem.find_by_id(params[:id])
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
    @auctionitem.destroy
    redirect_to root_path
  end

  private

    def correct_user
      @auctionitem = current_user.auction_items.find_by_id(params[:id])
      redirect_to root_path if @auctionitem.nil?
    end
end
