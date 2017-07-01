require_relative 'base_page'

class Excercise1Page < BasePage

    # PROBLEM1 PAGE CONTROLS

    # INPUT FIELD - CONTROLS
    # Assuming that IDs are inside input tag on web page
    VALUE1_INPUT =  {:xpath => "//input[@id = 'txt_val_1']"}
    VALUE2_INPUT =  {:xpath => "//input[@id = 'txt_val_2']"}
    VALUE3_INPUT =  {:xpath => "//input[@id = 'txt_val_4']"}
    VALUE4_INPUT =  {:xpath => "//input[@id = 'txt_val_5']"}
    VALUE5_INPUT =  {:xpath => "//input[@id = 'txt_val_6']"}
    TOTAL_BALANCE_INPUT = {:xpath => "//input[@id = 'txt_ttl_val']"}

    # LABEL FIELD - CONTROLS
    VALUE1_LABEL = {:xpath => "//label[@id = 'lbl_val_1']"} 
    VALUE2_LABEL = {:xpath => "//label[@id = 'lbl_val_2']"} 
    VALUE3_LABEL = {:xpath => "//label[@id = 'lbl_val_3']"} 
    VALUE4_LABEL = {:xpath => "//label[@id = 'lbl_val_4']"} 
    VALUE5_LABEL = {:xpath => "//label[@id = 'lbl_val_5']"} 
    TOTAL_BALANCE_LABEL = {:xpath => "//label[@id = 'lbl_ttl_val']"} 

    def initialize(driver)
        super
    end

    def type_in_input_field(text, fieldname)
        case fieldname
        when 'value 1'
            @base_page.type_in_input_field(text, VALUE1_INPUT, "VALUE1_INPUT")
        when 'value 2'
            @base_page.type_in_input_field(text, VALUE2_INPUT, "VALUE2_INPUT")
        when 'value 3'
            @base_page.type_in_input_field(text, VALUE3_INPUT, "VALUE3_INPUT")
        when 'value 4'
            @base_page.type_in_input_field(text, VALUE4_INPUT, "VALUE4_INPUT")
        when 'value 5'
            @base_page.type_in_input_field(text, VALUE5_INPUT, "VALUE5_INPUT")
        when 'total balance'
            @base_page.type_in_input_field(text, TOTAL_BALANCE_INPUT, "TOTAL_BALANCE_INPUT")
        else 
            raise "Given input field name: #{fieldname} is not correct"
        end
    end

    def get_field_value(fieldname)
        case fieldname
        when 'value 1'
            @base_page.get_field_value(VALUE1_INPUT, "VALUE1_INPUT")
        when 'value 2'
            @base_page.get_field_value(VALUE1_INPUT, "VALUE1_INPUT")
        when 'value 3'
            @base_page.get_field_value(VALUE1_INPUT, "VALUE1_INPUT")
        when 'value 4'
            @base_page.get_field_value(VALUE1_INPUT, "VALUE1_INPUT")
        when 'value 5'
            @base_page.get_field_value(VALUE1_INPUT, "VALUE1_INPUT")
        when 'total balance'
            @base_page.get_field_value(VALUE1_INPUT, "VALUE1_INPUT")
        when 'value 1 label'
            @base_page.get_field_value(VALUE1_LABEL, "VALUE1_LABEL")
        when 'value 2 label'
            @base_page.get_field_value(VALUE2_LABEL, "VALUE2_LABEL")
        when 'value 3 label'
            @base_page.get_field_value(VALUE3_LABEL, "VALUE3_LABEL")
        when 'value 4 label'
            @base_page.get_field_value(VALUE4_LABEL, "VALUE4_LABEL")
        when 'value 5 label'
            @base_page.get_field_value(VALUE5_LABEL, "VALUE5_LABEL")
        when 'total balance label'
            @base_page.get_field_value(TOTAL_BALANCE_LABEL, "TOTAL_BALANCE_LABEL")
        else 
            raise "Given input field name: #{fieldname} is not correct"
        end
    end

end