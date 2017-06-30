require 'selenium-webdriver'

driver = Selenium::WebDriver.for :chrome
driver.get('http://google.com/')
driver.manage.timeouts.implicit_wait = 30

body = driver.find_element(:tag_name => 'body')
body.send_keys(:control, 't') #new tab
driver.get('http://www.ask.com/')