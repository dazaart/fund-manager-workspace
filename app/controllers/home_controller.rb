class HomeController < ApplicationController
  def index
    @investors = Investor.all.order(created_at: :desc)

    @potential_capital= @investors.where.not(status: [ "Committed", "Passed" ]).sum(:commitment_amount)
    @total_raised = @investors.where(status: [ "Committed", "Passed" ]).sum(:commitment_amount)
    @investor_count = @investors.count
    @committed_count = @investors.where(status: [ "Committed", "Passed" ]).count
  end
end
