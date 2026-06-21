class HomeController < ApplicationController
  def index
    @investors = Investor.all.order(created_at: :desc)

    @total_raised = @investors.sum(:commitment_amount)
    @investor_count = @investors.count
    @committed_count = @investors.where(status: "Committed").count
  end
end
