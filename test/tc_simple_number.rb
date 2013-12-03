require_relative "../simple_number"
require "test/unit"

class TestSimpleNumber < Test::Unit::TestCase

	def setup
		@num = SimpleNumber.new(2)
	end
	def test_simple
		assert_equal(2, @num.poten(1))
	end

	def test_add
		assert_not_equal(4, @num.add(1), "2 + 1 != 4")
	end

	def test_divisao
		assert_raise(ZeroDivisionError) { @num.div(0) }
	end
end