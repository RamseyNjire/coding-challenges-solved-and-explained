def angry_professor(threshold, arrival_times)
  on_time = arrival_times.select { |time| time <= 0 }.count
  threshold > on_time ? 'YES' : 'NO'
end
