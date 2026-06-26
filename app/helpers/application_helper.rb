module ApplicationHelper
  def status_badge_classes(status)
    case status
    when "Interested"
      "bg-yellow-100 text-yellow-800 dark:bg-yellow-300 dark:text-yellow-900"
    when "Meeting Scheduled"
      "bg-blue-100 text-blue-800 dark:bg-blue-600 dark:text-blue-100"
    when "Committed"
      "bg-teal-100 text-teal-800 dark:bg-teal-700 dark:text-teal-100"
    else
      "bg-slate-100 text-slate-700"
    end
  end

  def status_text_color(status)
    case status
    when "New"
      "text-slate-200"
    when "Interested"
      "text-yellow-600"
    when "Meeting Scheduled"
      "text-blue-600 dark:text-blue-500"
    when "Committed"
      "text-teal-700"
    else
      "text-slate-600"
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
