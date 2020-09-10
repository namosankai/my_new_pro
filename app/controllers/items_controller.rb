class ItemsController < ApplicationController
  
  #itemsの一覧
  def index
    @items = Item.all
  end

  #traders/newの中にあるitem一覧
  def new
  end

  #各traderごとの新規item追加画面
  def create
    @item = Item.new(name: params[:name], price: params[:price], cost: params[:cost])
    
    if item.save
      flash[:notice] = "新規アイテムを追加しました"
      redirect_to("/traders/:id/kwsk")
    else
      render("items/new")
    end
  end
end
