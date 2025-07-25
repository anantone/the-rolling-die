require 'minitest/autorun'
require_relative 'dice'

class DiceTest < Minitest::Test

  def test_single_roll_is_within_limits
    roll = Die.new.roll
    range = (1..6)
    message = %q(One roll's result %<roll>s must be within %<range>s)

    assert_includes range, roll, message % {roll:, range:}
  end

  def test_knows_itself
    description = Die.new.description
    sides ='6-sided' 
    assert_equal description, sides % {description:, sides:}
  end

end
