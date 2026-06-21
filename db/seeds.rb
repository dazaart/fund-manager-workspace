Investor.find_or_create_by!(name: "Sophia Chen") do |investor|
  investor.status = "Interested"
  investor.commitment_amount = 250_000
  investor.next_action = "Send fund deck"
end

Investor.find_or_create_by!(name: "Marcus Lee") do |investor|
  investor.status = "Meeting Scheduled"
  investor.commitment_amount = 500_000
  investor.next_action = "Prepare partner meeting"
end

Investor.find_or_create_by!(name: "Elena Rossi") do |investor|
  investor.status = "Committed"
  investor.commitment_amount = 1_000_000
  investor.next_action = "Send closing documents"
end
