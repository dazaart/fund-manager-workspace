module InvestorsHelper
  def step_completed?(investor, step)
    current_index = Investor::STATUS_STEPS.index(investor.status)
    step_index = Investor::STATUS_STEPS.index(step)

    return false if current_index.nil? || step_index.nil?

    step_index <= current_index
  end

  def current_step?(investor, step)
    investor.status == step
  end
end
