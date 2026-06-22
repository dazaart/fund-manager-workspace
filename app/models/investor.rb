class Investor < ApplicationRecord
  STATUSES = [
    "New",
    "Interested",
    "Meeting Scheduled",
    "Committed",
    "Passed"
  ].freeze

    STATUS_STEPS = [
    "New",
    "Interested",
    "Meeting Scheduled",
    "Committed"
  ].freeze

  NEXT_ACTIONS = [
    "Send fund deck",
    "Schedule intro call",
    "Prepare partner meeting",
    "Send closing documents"
  ].freeze

  ACTION_STEPS = [
  "Send fund deck",
  "Schedule intro call",
  "Prepare partner meeting",
  "Send closing documents"
].freeze

  validates :name, presence: true
  validates :status, presence: true, inclusion: { in: STATUSES, allow_blank: true }
  validates :next_action, presence: true, inclusion: { in: NEXT_ACTIONS, allow_blank: true }

  validates :commitment_amount,
            presence: true,
            numericality: {
              only_integer: true,
              greater_than: 0,
              allow_blank: true
            }
end
