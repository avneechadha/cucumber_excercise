class BasePage
    
    # Initializing driver
    def initialize(driver)
        @driver =   driver
        @logger = Logger.new(STDOUT)
        @logger.level = Logger::DEBUG
    end

    # This method will return element identified by given locator
    def find(locator, element_name)
        @logger.info("Searching element #{element_name}")
        @driver.find_element locator
    end
    
    # This method will type input in fields
    def type_in_input_field(text, locator, element_name)
        type(text, locator, element_name)
    end
    
    # This method will get values from input fields and labels 
    def get_from_input_field(locator, element_name)
        sValue = get_text(locator, element_name)
        return sValue
    end        
    
    # This method will return status of an element whether it appears on page or not
    def is_displayed?(locator, element_name)
        begin
            @wait.until{find(locator, element_name)};
        rescue Selenium::WebDriver::Error::TimeOutError
            @logger.error("Element #{element_name} with locator: #{locator} not found on page")
            raise "Element not found"
        end
        find(locator, element_name).displayed?
    end    

end