Given /^I go to the home page and wait to be redirected$/ do
  visit '/'
  step %|I wait 2 seconds|
end