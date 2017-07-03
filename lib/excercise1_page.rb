require_relative 'base_page'

class Excercise1Page < BasePage

    # PROBLEM1 PAGE CONTROLS

    # INPUT FIELD - CONTROLS
    
    EXCERCISE1_PAGE_VALUE1_INPUT =  {:id = "txt_val_1"}
    EXCERCISE1_PAGE_VALUE2_INPUT =  {:id = "txt_val_2"}
    EXCERCISE1_PAGE_VALUE3_INPUT =  {:id = "txt_val_4"}
    EXCERCISE1_PAGE_VALUE4_INPUT =  {:id = "txt_val_5"}
    EXCERCISE1_PAGE_VALUE5_INPUT =  {:id = "txt_val_6"}
    EXCERCISE1_PAGE_TOTAL_BALANCE_INPUT = {:id = "txt_ttl_val"}

    # LABEL FIELD - CONTROLS
    
    EXCERCISE1_PAGE_VALUE1_LABEL = {:id = "lbl_val_1"} 
    EXCERCISE1_PAGE_VALUE2_LABEL = {:id = "lbl_val_2"} 
    EXCERCISE1_PAGE_VALUE3_LABEL = {:id = "lbl_val_3"} 
    EXCERCISE1_PAGE_VALUE4_LABEL = {:id = "lbl_val_4"} 
    EXCERCISE1_PAGE_VALUE5_LABEL = {:id = "lbl_val_5"} 
    EXCERCISE1_PAGE_TOTAL_BALANCE_LABEL = {:id = "lbl_ttl_val"} 

    def initialize(driver)
        super
    end

    def type_in_input_field(text, fieldname)
        case fieldname
        when 'value 1'
            @base_page.type_in_input_field(text, EXCERCISE1_PAGE_VALUE1_INPUT, "EXCERCISE1_PAGE_VALUE1_INPUT")
        when 'value 2'
            @base_page.type_in_input_field(text, EXCERCISE1_PAGE_VALUE2_INPUT, "EXCERCISE1_PAGE_VALUE2_INPUT")
        when 'value 3'
            @base_page.type_in_input_field(text, EXCERCISE1_PAGE_VALUE3_INPUT, "EXCERCISE1_PAGE_VALUE3_INPUT")
        when 'value 4'
            @base_page.type_in_input_field(text, EXCERCISE1_PAGE_VALUE4_INPUT, "EXCERCISE1_PAGE_VALUE4_INPUT")
        when 'value 5'
            @base_page.type_in_input_field(text, EXCERCISE1_PAGE_VALUE5_INPUT, "EXCERCISE1_PAGE_VALUE5_INPUT")
        when 'total balance'
            @base_page.type_in_input_field(text, EXCERCISE1_PAGE_TOTAL_BALANCE_INPUT, "EXCERCISE1_PAGE_TOTAL_BALANCE_INPUT")
        else 
            raise "Given input field name: #{fieldname} is not correct"
        end
    end

    def get_field_value(fieldname)
        case fieldname
        when 'value 1'
            @base_page.get_field_value(EXCERCISE1_PAGE_VALUE1_INPUT, "EXCERCISE1_PAGE_VALUE1_INPUT")
        when 'value 2'
            @base_page.get_field_value(EXCERCISE1_PAGE_VALUE2_INPUT, "EXCERCISE1_PAGE_VALUE2_INPUT")
        when 'value 3'
            @base_page.get_field_value(EXCERCISE1_PAGE_VALUE3_INPUT, "EXCERCISE1_PAGE_VALUE3_INPUT")
        when 'value 4'
            @base_page.get_field_value(EXCERCISE1_PAGE_VALUE4_INPUT, "EXCERCISE1_PAGE_VALUE4_INPUT")
        when 'value 5'
            @base_page.get_field_value(EXCERCISE1_PAGE_VALUE5_INPUT, "EXCERCISE1_PAGE_VALUE5_INPUT")
        when 'total balance'
            @base_page.get_field_value(EXCERCISE1_PAGE_TOTAL_BALANCE_INPUT, "EXCERCISE1_PAGE_TOTAL_BALANCE_INPUT")
        when 'value 1 label'
            @base_page.get_field_value(EXCERCISE1_PAGE_VALUE1_LABEL, "EXCERCISE1_PAGE_VALUE1_LABEL")
        when 'value 2 label'
            @base_page.get_field_value(EXCERCISE1_PAGE_VALUE2_LABEL, "EXCERCISE1_PAGE_VALUE2_LABEL")
        when 'value 3 label'
            @base_page.get_field_value(EXCERCISE1_PAGE_VALUE3_LABEL, "EXCERCISE1_PAGE_VALUE3_LABEL")
        when 'value 4 label'
            @base_page.get_field_value(EXCERCISE1_PAGE_VALUE4_LABEL, "EXCERCISE1_PAGE_VALUE4_LABEL")
        when 'value 5 label'
            @base_page.get_field_value(EXCERCISE1_PAGE_VALUE5_LABEL, "EXCERCISE1_PAGE_VALUE5_LABEL")
        when 'total balance label'
            @base_page.get_field_value(EXCERCISE1_PAGE_TOTAL_BALANCE_LABEL, "EXCERCISE1_PAGE_TOTAL_BALANCE_LABEL")
        else 
            raise "Given input field name: #{fieldname} is not correct"
        end
    end

    #This method will return all elements identified by given locator
    def get_sum_of_all_elements
        @logger.info("Searching element #{[value1, value2, value3, value4, value5]}")
        allelements = @driver.find_elements(By.xpath("//*[contains(@id, 'txt_val_')]"))

        if allelements.all? { |elem| elem.value.start_with?("$") }
            elements = allelements.map { |elem| elem.value.tr('$', '').to_i }
            elements.reduce(:+)
        else 
            raise "Field value should have currency format"
        end

    end

end