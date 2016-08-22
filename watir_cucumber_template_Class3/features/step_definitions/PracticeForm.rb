Given(/^User navigate to the Practice selenium web page$/) do
  @browser.goto "http://www.seleniumframework.com/practiceform/"

end

Then(/^User write some description in the textarea$/) do
  @browser.textarea(id:"vfb-10").set('I am learning ruby cucumber for the first time. I need some help.')
end

Then(/^User write his name on the text box$/) do
  @browser.text_field(id:"vfb-9").set('Sadrul Amin')
end

And(/^User click on the first checkbox$/) do
  @browser.checkbox(id:"vfb-6-0").click

end

Then(/^User clicks on the first radio button$/) do
  @browser.radio(id:"vfb-7-1").click
end

Then(/^User type the date on the date field$/) do
  @browser.text_field(id:"vfb-8").set('07/30/2016')
 # @browser.text_field(xpath:'//*[@id="lastName"]').set('07/30/2016')


end

Then(/^User fills up the url box$/) do
  @browser.text_field(id:"vfb-11").set('www.facebook.com')
end

Then(/^User Select option2 from the dropdown$/) do
  @browser.select(id:"vfb-12").select('Option 2')
end

Then(/^User type two digit on the verification box$/) do
  @browser.text_field(id:"vfb-3").set('22')

end

And(/^User clicks on the submit button$/) do
  @browser.button(id:"vfb-4").click
end