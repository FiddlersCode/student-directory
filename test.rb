def clock (&block)
  puts time = Time.now.hour

  if time > 12
    time = time - 12
  end
  while time > 0
    block.call
    time -= 1
  end
  # calls block once for each hour passed today
  # dong for each hour passed
end

clock {puts "DONG!"}
clock {puts "marshmallow"}
