Given(/^I open seleniumframework website$/) do
  @browser.goto "http://www.seleniumframework.com"
end

When(/^I navigate to about page$/) do
  @browser.link(text: "ABOUT").click
end

Then(/^I verify the title "([^"]*)"$/) do |arg|
  expect(@browser.title).to eql(arg)
end

When(/^I navigate to tutorials page$/) do
 @browser.link(text: "TUTORIALS").click
end

