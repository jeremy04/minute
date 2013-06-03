def add_minutes(time, minutes)
  time =~ /^(\d{1,2})\:(\d{2})\s(AM|PM)$/
  hour, current_minute, meridian = $1.to_i, $2.to_i, $3
  raise ArgumentError, "Invalid hour" if hour > 12
  raise ArgumentError, "Invalid minute" if current_minute > 59

  if current_minute + minutes == 60
    num_of_hours = (minutes.to_f / 60).ceil
  else
    num_of_hours = (minutes.to_f / 60).floor
  end

  hour += num_of_hours
  hour = hour % 12
  hour = 12 if hour.zero?

  num_of_minutes = (current_minute + minutes) % 60
  minutes = sprintf("%02d", num_of_minutes)

  "#{hour}:#{minutes} #{meridian}"
end
