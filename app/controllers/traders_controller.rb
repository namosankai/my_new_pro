class TradersController < ApplicationController

  #業者一覧
  def show
    @traders = Trader.all.order(created_at: :asc)
  end

  #業者追加ページ
  def new
    @trader = Trader.find_by(id: params[:id])
  end

  #新規投稿ボタン
  def create
    @trader = Trader.new(content: params[:content])
    if @trader.save
      flash[:notice] = "作成しました"
      redirect_to("/traders/show")
    else
      render("traders/new")
    end
  end

  #詳細ページ
  def kwsk
    @trader = Trader.find_by(id: params[:id])
    @item = Item.find_by(id: params[:id])
    

  end

  #編集ページ
  def edit
    @trader = Trader.find_by(id: params[:id])
    
  end

  #編集投稿ボタン
  def update
    @trader = Trader.find_by(id: params[:id])
    @trader.content = params[:content]
    if @trader.save
      #保存できた場合
      flash[:notice] = "編集しました"
      redirect_to("/traders/show")
    else
      #保存できなかった場合
      render("traders/edit")
    end
  end

  #削除ボタン
  def destroy
    @trader = Trader.find_by(id: params[:id])
    @trader.destroy
    flash[:notice] = "削除しました"
    redirect_to("/traders/show")
  end
end
