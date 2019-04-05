HOUR_HAND_ANGLE_PER_HOUR = 30
HOUT_HAND_ANGEL_PER_MINUTE = 0.5
MINUTE_HAND_ANGLE_PER_MINUTE = 6

def how_angle_between_minute_hand_and_hour_hand(time)
  time_ary = time.split(":")
  hour = time_ary[0].to_i
  minute = time_ary[1].to_i
  if hour > 12
    hour -= 12
  end
  basic_hour_angle = hour * HOUR_HAND_ANGLE_PER_HOUR
  minute_hour_angle = minute * HOUT_HAND_ANGEL_PER_MINUTE
  hour_angle = basic_hour_angle + minute_hour_angle
  minute_angle = minute * MINUTE_HAND_ANGLE_PER_MINUTE
  if hour_angle > minute_angle
    angle_between_minute_hand_and_hour_hand = hour_angle - minute_angle
  elsif hour_angle == minute_angle
    angle_between_minute_hand_and_hour_hand = 0
  else
    angle_between_minute_hand_and_hour_hand = minute_angle - hour_angle
  end
  return angle_between_minute_hand_and_hour_hand
end
