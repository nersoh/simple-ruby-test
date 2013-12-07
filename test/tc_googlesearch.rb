require 'test/unit'
require 'selenium-webdriver'

class TestGoogle < Test::Unit::TestCase
	
	def setup
		@driver = Selenium::WebDriver.for :phantomjs
	end

	def test_google_search
		@driver.get "http://google.com"
		element = @driver.find_element :name => "q"
		element.send_keys "nodejs"
		element.submit

		assert_equal(true, @driver.title.start_with?("nodejs"))
	end

end