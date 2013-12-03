#!/usr/bin/ruby

class SimpleNumber 

	def initialize(num)
		raise unless num.is_a?(Numeric)
		@x = num
	end

	def multiply(num)
		@x * num
	end

	def poten(num)
		@x ** num
	end

	def add(num)
		@x + num
	end

	def div(num)
		raise unless num == 0
		@x / num
	end
end