Given /^I am on excercise1 page$/ do
    @browser.navigate.to "https://www.exercise1.com/values"
end

Then /^I expect the count of values are "(.*?)" in excercise page$/ do |field_name|
    
end

And /^I expect the value of "(.*?)" text field is non empty in excercise page$/do
    expval = ""
    actval = @current_page.get_field_value(field_name)
    assert_equal(expval, actval, "Wrong value is filled in fieldname: #{field_name}, Expected: #{expval} \n Actual: #{actval}")
end

And /^I expect the value of "(.*?)" text field is "(.*?)" in excercise page$/ do |field_name, expval|
    expval = get_variable_value(expval)
    actval = @current_page.get_field_value(field_name)
    assert_equal(expval, actval, "Wrong value is filled in fieldname: #{field_name}, Expected: #{expval} \n Actual: #{actval}")
end

And /^I expect the value of "(.*?)" text field is greater than "(.*?)" in excercise page$/ do |field_name, expval|
    actval = @current_page.get_field_value(field_name)
    if (actval > 0)
        assert_equal(expval, actval, "Value of fieldname: #{field_name} is Expected: #{expval} \n Actual: #{actval}")
    else
        assert_equal(expval, actval, "Given fieldname: #{field_name} value is less than 0, \n Actual: #{actval}")    
end

And /^I expect the "(.*?)" text field is formatted as currencies in excercise page$/ |field_name|
    actval = @current_page.get_field_value(field_name)
    if actval.start_with? "$"

end

And /^I expect the value of "(.*?)" text field is equal to sum of values {value 1, value 2, value 3, value 4, value 5} in excercise page$/  

end