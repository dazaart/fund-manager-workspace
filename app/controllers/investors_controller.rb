class InvestorsController < ApplicationController
  def new
  end

  def create
    Investor.create!(
      name: params[:name],
      status: params[:status],
      commitment_amount: params[:commitment_amount],
      next_action: params[:next_action]
    )

    redirect_to root_path
  end
end
