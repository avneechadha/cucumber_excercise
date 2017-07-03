# This step will verify that excercise1 page is open
Given /^I am on excercise1 page$/ do
    @excercise1_page = @browser.open_application();
end

# This step will verify that values appear correcty
And /^I expect the value of "(.*?)" field is "(.*?)" in excercise1 page$/ do |field_name, expval|
    actval = @excercise1_page.get_field_value(field_name)
    assert_equal(expval, actval, "Wrong value is filled in fieldname: #{field_name}, \n Expected: #{expval} \n Actual: #{actval}")
end

# This step will verify that values are non-empty
And /^I expect the value of "(.*?)" field is non empty in excercise1 page$/ do |field_name|
    expval = ""
    actval = @excercise1_page.get_field_value(field_name)
    assert_equal(expval, actval, "Wrong value is filled in fieldname: #{field_name}, \n Expected: #{expval} \n Actual: #{actval}")
end

# This step will verify that values are greater than zero
And /^I expect the value of "(.*?)" field is greater than "(.*?)" in excercise1 page$/ do |field_name, expval|
    actval = @excercise1_page.get_field_value(field_name)
    assert(actval>0, "Given fieldname: #{field_name} value is less than 0, \n Actual: #{actval}")    
end

# This step will verify that values are formatted as a currency
And /^I expect the "(.*?)" field is formatted as currency in excercise1 page$/ do |field_name|
    actval = @excercise1_page.get_field_value(field_name)
    if actval.start_with? "$"
        puts "Fieldname: #{field_name} is in currency format"
    else 
        step("Given fieldname: #{field_name} value has no currency format, \n Actual: #{actval}")    
    end
end    

# This step is adding values to verify total balance  
And /^I expect the sum of all value fields matches with "(.*?)" field in excercise1 page$/ do |fieldname|
    actval = @excercise1_page.sum_of_all_element_values
    val = @excercise1_page.get_field_value(field_name)
    expval = val.tr('$', '').to_i
    assert_equal(expval, actval, "Total Balance field does not match with sum of values field, \n Expected: #{expval} \n Actual: #{actval}")        
end


