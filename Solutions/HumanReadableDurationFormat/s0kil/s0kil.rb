def format_duration(seconds)
  return 'now' if seconds.zero?

  default = [0, 0]
  minutes, seconds = (seconds.divmod(60) unless seconds.zero?) || default
  hours,   minutes = (minutes.divmod(60) unless minutes.zero?) || default
  days,    hours   = (hours.divmod(24)   unless hours.zero?)   || default
  years,   days    = (days.divmod(365)   unless days.zero?)    || default

  pluralize = ->(n, s) { n == 1 ? s : s + 's' }

  format = lambda { |array|
    return array.join if array.size <= 1
    return array.join(' and ') if array.size == 2
    return format.call([array.slice(0...(array.length - 1)).join(', '), array.last]) if array.size >= 3
  }

  result = []
  result << "#{years} #{pluralize.call(years, 'year')}"       unless years.zero?
  result << "#{days} #{pluralize.call(days, 'day')}"          unless days.zero?
  result << "#{hours} #{pluralize.call(hours, 'hour')}"       unless hours.zero?
  result << "#{minutes} #{pluralize.call(minutes, 'minute')}" unless minutes.zero?
  result << "#{seconds} #{pluralize.call(seconds, 'second')}" unless seconds.zero?

  format.call(result)
end
