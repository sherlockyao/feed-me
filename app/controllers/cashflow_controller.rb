class CashflowController < ApplicationController
  def index
  end

  def credit
    creditor = User.find(params[:creditor_id])
    creditor.credit(params[:amount].to_f, params[:debitor_id])

    respond_to do |format|
      format.html { redirect_to root_path }
    end
  end

  def refund
  end
end
