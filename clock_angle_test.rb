require 'minitest/autorun'
require './clock_angle'

class ClockAngleTest < Minitest::Test
  def test_clock_angle
    assert_equal 330, how_angle_between_minute_hand_and_hour_hand("11:00")
    assert_equal how_angle_between_minute_hand_and_hour_hand("3:00"), how_angle_between_minute_hand_and_hour_hand("15:00")
    assert_equal how_angle_between_minute_hand_and_hour_hand("3:00"), how_angle_between_minute_hand_and_hour_hand("03:00")
    assert_equal 0, how_angle_between_minute_hand_and_hour_hand("00:00")
    assert_equal 5.5, how_angle_between_minute_hand_and_hour_hand("23:59")
  end
end
