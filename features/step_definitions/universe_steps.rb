Given /^a universe called "(.*?)"$/ do |arg1|
  @universe = Universe.create!(name: arg1)
end

Given /^a universe with description "(.*?)"$/ do |arg1|
  @universe = Universe.create!(name: 'nil',description: arg1)
end

When /^I list all universes$/ do
  visit universes_path
end

When /^I visit the universe$/ do
  visit universe_path @universe
end

Then /^I should be on the universe's page$/ do
  current_path.should == universe_path(@universe)
end