require "minitest/autorun"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return number * number
  end

  def power(number, exponent)
    return number ** exponent
  end
end

class TestCalculator < Minitest::Test
  def test_add
    calculator = Calculator.new
    assert_equal 4, calculator.add(1, 3)
  end

  def test_add_with_negative_numbers
    calculator = Calculator.new
    assert_equal -2, calculator.add(1, -3)
  end

  def test_subtract
    calculator = Calculator.new
    assert_equal 5, calculator.subtract(10, 5)
  end

  def test_multiply
    calculator = Calculator.new
    assert_equal 27, calculator.multiply(9, 3)
  end

  def test_divide
    calculator = Calculator.new
    assert_equal 4, calculator.divide(12, 3)
  end

  def test_square
    calculator = Calculator.new
    assert_equal 16, calculator.square(4)
  end

  def test_power
    calculator = Calculator.new
    assert_equal 27, calculator.power(3, 3)
  end
end
