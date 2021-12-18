When /^I confirm "([^"]*)"$/ do |confirm_text|
  dialog = page.driver.browser.switch_to.alert
  dialog.text.should == confirm_text
  dialog.accept
end

When /^I dismiss "([^"]*)"$/ do |confirm_text|
  dialog = page.driver.browser.switch_to.alert
  dialog.text.should == confirm_text
  dialog.dismiss
end

Then('I open a new window for {string}') do |url|
str =
<<END_TAG
     window.open("#{url}", "window_name", "height=800,width=1000");
END_TAG
  page.execute_script(str)
end

Then('I click on {string}') do |url|
str =
<<END_TAG
    document.querySelector("#{url}").click()
END_TAG
  page.execute_script(str)
end