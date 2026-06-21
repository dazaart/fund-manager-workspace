module ApplicationHelper
  def status_badge_classes(status)
    case status
    when "Interested"
      "bg-yellow-100 text-yellow-800"
    when "Meeting Scheduled"
      "bg-blue-100 text-blue-800"
    when "Committed"
      "bg-green-100 text-green-800"
    else
      "bg-slate-100 text-slate-700"
    end
  end

  def field_classes(record, field)
  base_classes = "mt-1 w-full rounded-lg border px-3 py-2 outline-none transition"

  if record.errors[field].any?
    "#{base_classes} border-red-300 bg-red-50 focus:border-red-500 focus:ring-2 focus:ring-red-100"
  else
    "#{base_classes} border-slate-300 focus:border-slate-900 focus:ring-2 focus:ring-slate-100"
  end
  end
end
