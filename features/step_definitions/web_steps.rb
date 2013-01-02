When /^I click on "(.*?)"$/ do |arg1|
  click_link arg1
end

When /^I visit the homepage$/ do
  visit root_path
end

Then /^I should be on the homepage$/ do
  current_path.should == root_path
end

Then /^I should not see "(.*?)"$/ do |arg1|
  page.should_not have_content(arg1)
end

Then /^I should see "(.*?)"$/ do |arg1|
  page.should have_content(arg1)
end