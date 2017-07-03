require 'selenium-webdriver'
require 'cucumber'
require 'require_all'
require 'test/unit/assertions'
require  'logger'

World Test::Unit::Assertions

require_all 'lib'

After do |scenario|
    sleep 5
    @browser.driver.quit; 
end
