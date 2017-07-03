require 'selenium-webdriver'
require 'cucumber'
require 'require_all'
require 'test/unit/assertions'
require  'logger'

require_all 'lib'

Before do |scenario|
    @browser = Browser.new(ENV['DRIVER'])
end


After do |scenario|
    sleep 5
    @browser.driver.quit;
end
