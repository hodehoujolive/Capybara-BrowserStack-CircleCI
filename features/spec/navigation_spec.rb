Given /^I am on (.*)$/ do |url|
    visit url
end

When /^I?\s?click "([^"]*)"$/ do |text|
  click_link_or_button text
end

Then /^I should see "([^"]*)"$/ do |text|
  page.should have_content(text)
end

Then /^I should not see "([^"]*)"$/ do |text|
  page.should_not have_content(text)
end

When /^I submit form "([^"]*)"$/ do |form|
    find_field(form).submit
end
  
Then /^I should see title "([^\"]*)"$/ do |title|
    expect(page).to have_title title
end
  
Then /^I should have css "([^\"]*)"$/ do |css|
    expect(page).to have_css css
end
  
Then /^I should see field "([^\"]*)"$/ do |field|
    expect(page).to have_field field
end
  
Then /^I should have button "([^\"]*)"$/ do |button|
    expect(page).to have_button button
end

Then /^I should have current link "([^\"]*)"$/ do |link|
    expect(page).to have_current_path link
end