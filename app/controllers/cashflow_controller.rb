class CashflowController < ApplicationController
  def index
  end

  def show
    @cashflows = Cashflow.where(:creditor_id => params[:creditor_id], :debitor_id => params[:debitor_id])
    @refund_amount = 0
    @cashflows.each do |cashflow|
      @refund_amount += cashflow.amount
    end
  end

  def credit
    creditor = User.find(params[:creditor_id])
    creditor.credit(params[:amount].to_f, params[:debitor_id])

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  def refund
    creditor = User.find(params[:creditor_id])
    creditor.credit(-(params[:amount].to_f), params[:debitor_id])
    Cashflow.clean(params[:creditor_id], params[:debitor_id])

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end
end
