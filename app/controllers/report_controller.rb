class ReportController < ApplicationController
  def top
    @report = Report.last
    @sale = Saling.last
    
    @total_target = Saling.all.sum(:target)
    @total_resalt = Saling.all.sum(:resalt)
    

    difference = @sale.resalt - @sale.target
    if difference > 0
      @difference = "+" + "#{difference}"
    else
      @difference = difference
    end

    t_dif = @total_resalt - @total_target
    if t_dif > 0
      @total_dif = "+" + "#{t_dif}"
    else
      @total_dif = t_dif
    end

  end

  def new
    @report = Report.new
    @sale = Saling.new
  end

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

  def index
    @reports = Report.all.order(:desc)
  end

  def show
    @report = Report.find_by(id: params[:id])
    @sale = Saling.find_by(id: params[:id])
    @total_target = Saling.all.sum(:target)
    @total_resalt = Saling.all.sum(:resalt)

    difference = @sale.resalt - @sale.target
    if difference > 0
      @difference = "+" + "#{difference}"
    else
      @difference = difference
    end

    t_dif = @total_resalt - @total_target
    if t_dif > 0
      @total_dif = "+" + "#{t_dif}"
    else
      @total_dif = t_dif
    end
  end
end
