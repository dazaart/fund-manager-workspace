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

  def action_completed?(investor, action)
  current_index = Investor::ACTION_STEPS.index(investor.next_action)
  action_index = Investor::ACTION_STEPS.index(action)

  return false if current_index.nil? || action_index.nil?

  action_index < current_index
  end

  def current_action?(investor, action)
    investor.next_action == action
  end
end
