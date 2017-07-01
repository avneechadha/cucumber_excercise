class BasePage

    def initialize(driver)
        @driver =   driver
        @logger = Logger.new(STDOUT)
        @logger.level = Logger::DEBUG
    end

    def find(locator, element_name)
        @logger.info("Searching element #{element_name}")
        @driver.find_element locator
    end

    def is_displayed?(locator, element_name)
        begin
            @wait.until{find(locator, element_name)};
        rescue Selenium::WebDriver::Error::TimeOutError
            @logger.error("Element #{element_name} with locator: #{locator} not found on page")
            raise "Element not found"
        end
        find(locator, element_name).displayed?
    end    

