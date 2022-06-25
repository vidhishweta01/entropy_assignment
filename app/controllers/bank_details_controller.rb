class BankDetailsController < ApplicationController
  before_action :authenticate_user!
  def new
    @bank_detail = BankDetail.new
  end

  def create
    @bank_detail = BankDetail.create(bank_detail_param)
    if @bank_detail.save
      redirect_to root_path
    else
      redirect_to new_bank_detail_path, alert: @bank_detail.errors.messages
    end
  end

  private

  def bank_detail_param
    params.require(:bank_detail).permit(:account_number, :ifsc_code, :swift_code, :user_id)
  end
end
