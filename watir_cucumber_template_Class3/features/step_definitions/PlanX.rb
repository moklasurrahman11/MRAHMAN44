Given(/^As a user I navigate to the google home page$/) do
  @browser.goto"https://www.google.com/"
end

Then(/^I search for Plan\-X$/) do
  @browser.text_field(id:"lst-ib").when_present.set('Plan-X')
end

Then(/^I click on the first link$/) do
  @browser.link(text:"Plan X - Defense Advanced Research Projects Agency").when_present.click
end