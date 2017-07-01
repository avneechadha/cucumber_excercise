sum_of_field_value


def get_value(value)
tmp_val = binding.local_variable_get value.to_sym
return tmp_val
end



Given /^I am on excercise1 page$/ do
    @excercise1_page = @browser.open_application();
end

And /^I expect the value of "(.*?)" field is non empty in excercise page$/ do |field_name|
    expval = ""
    actval = @excercise1_page.get_field_value(field_name)
    assert_equal(expval, actval, "Wrong value is filled in fieldname: #{field_name}, \n Expected: #{expval} \n Actual: #{actval}")
end

And /^I expect the value of "(.*?)" field is "(.*?)" in excercise page$/ do |field_name, expval|
    expval = get_value(expval)
    actval = @excercise1_page.get_field_value(field_name)
    assert_equal(expval, actval, "Wrong value is filled in fieldname: #{field_name}, \n Expected: #{expval} \n Actual: #{actval}")
end

And /^I expect the value of "(.*?)" field is greater than "(.*?)" in excercise page$/ do |field_name, expval|
    actval = @excercise1_page.get_field_value(field_name)
    assert(actval>0, "Given fieldname: #{field_name} value is less than 0, \n Actual: #{actval}")    
end

And /^I expect the "(.*?)" field is formatted as currency in excercise page$/ do |field_name|
    actval = @excercise1_page.get_field_value(field_name)
    if actval.start_with? "$"
        puts "Fieldname: #{field_name} is in currency format"
    else 
        step("Given fieldname: #{field_name} value has no currency format, \n Actual: #{actval}")    
end

And /^I expect the value of "(.*?)" field is equal to sum of values in excercise page$/ do |fieldname|  
    actval = @excercise1_page.sum_of_field_value(field_name)
    newval = @excercise1_page.get_field_value(fielname)
    expval = newval.delete('$')
    assert_equal(expval, actval, "Total Balance is not equal to the sum of values, \n Expected: #{expval} \n Actual: #{actval}")        
end