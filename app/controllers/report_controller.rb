class ReportController < ApplicationController

  #トップメニュー/最新の報告
  def top
    @report = Report.last
    @sale = Saling.last
    
    #累計差額計算/定義
    @total_target = Saling.all.sum(:target)
    @total_resalt = Saling.all.sum(:resalt)
    
    #差額計算
    difference = @sale.resalt - @sale.target
    if difference > 0
      @difference = "+" + "#{difference}"
    else
      @difference = difference
    end
    
    #累計差額計算
    t_dif = @total_resalt - @total_target
    if t_dif > 0
      @total_dif = "+" + "#{t_dif}"
    else
      @total_dif = t_dif
    end

  end

  #新規入力
  def new
    @report = Report.new
    @sale = Saling.new
  end

  #新規入力post用
  def create
    @report = Report.new(
      date: params[:date], group: params[:group], people: params[:people],
      feed: params[:feed], report_txt: params[:report_txt]
    )
    
    @sale = Saling.new(
      target: params[:target], resalt: params[:resalt], cash: params[:cash], 
      credit: params[:credit], gift: params[:gift], lunch: params[:lunch], night: params[:night],
      takeout: params[:takeout], coupon: params[:coupon], today_id: params[:today_id]
    )

    if @report.save && @sale.save
      flash[:notice] = "営業報告書の作成に成功しました"
      redirect_to("/report/top")
    else
      flash[:notice] = "登録に失敗しました"
      @report.errors.full_messages
      @sale.errors.full_messages

      render("report/new")
    end
  end

  #過去ログ一覧
  def index
    @reports = Report.all.order(:desc)
    @sale = Saling.find_by(id: params[:id])
  end

  #過去ログから開いたページ
  def show
    @report = Report.find_by(id: params[:id])
    @sale = Saling.find_by(id: params[:id])
    #累計差額計算/定義
    @total_target = Saling.all.sum(:target)
    @total_resalt = Saling.all.sum(:resalt)

    #差額計算
    difference = @sale.resalt - @sale.target
    if difference > 0
      @difference = "+" + "#{difference}"
    else
      @difference = difference
    end

    #累計差額計算
    t_dif = @total_resalt - @total_target
    if t_dif > 0
      @total_dif = "+" + "#{t_dif}"
    else
      @total_dif = t_dif
    end
  end

  #編集画面
  def edit
    @report = Report.find_by(id: params[:id])
    @sale = Saling.find_by(id: params[:id])
  end

  #update用post
  def update
    @report = Report.find_by(id: params[:id])
    @report.date = params[:date]
    @report.group = params[:group]
    @report.people = params[:people]
    @report.feed = params[:feed]
    @report.report_txt = params[:report_txt]

    @sale = Saling.find_by(id: params[:id])
    @sale.target = params[:target]
    @sale.resalt = params[:resalt]
    @sale.cash = params[:cash]
    @sale.credit = params[:credit]
    @sale.gift = params[:gift]
    @sale.lunch = params[:lunch]
    @sale.night = params[:night]
    @sale.takeout = params[:takeout]
    @sale.coupon = params[:coupon]
    @sale.today_id = params[:today_id]

    if @report.save && @sale.save
      flash[:notice] = "編集を完了しました"
      redirect_to("/report/index/")
    else
      flash[:notice] = "編集できませんでした"
      @report.errors.full_messages
      @sale.errors.full_messages

      render("report/edit")
    end

  end

  #削除用（未設定）
  def destroy
  end
end
