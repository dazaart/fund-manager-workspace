class HomeController < ApplicationController
  def index
    @investors = Investor.all.order(created_at: :desc)

    @potential_capital= @investors.where.not(status: [ "Committed", "Passed" ]).sum(:commitment_amount)
    @total_raised = @investors.where(status: [ "Committed", "Passed" ]).sum(:commitment_amount)
    @investor_count = @investors.count
    @committed_count = @investors.where(status: [ "Committed", "Passed" ]).count

    @stats = [
    {
      title: "Investors",
      value: @investor_count,
      description: "Total investors tracked"
    },
    {
      title: "Committed Investors",
      value: @committed_count,
      description: "Investors committed to the fund"
    },
    {
      title: "Committed Capital",
      value: ActionController::Base.helpers.number_to_currency(@total_raised, precision: 0),
      description: "Confirmed commitments"
    },
    {
      title: "Pipeline Capital",
      value: ActionController::Base.helpers.number_to_currency(@potential_capital, precision: 0),
      description: "Potential capital under discussion"
    }
  ]
  end
end
