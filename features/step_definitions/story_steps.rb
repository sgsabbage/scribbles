Given /^a story called "(.*?)" with description "([^"]*?)"$/ do |name, description|
  Story.create!(name: name, description: description)
end

Given /^a story called "(.*?)" with description "(.*?)" in universe "(.*?)"$/ do |name, description, universe|
  universe = Universe.find_by_name(universe)
  universe.stories.create!(name:name,description:description)
end