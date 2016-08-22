Given(/^User navigate to practice form page$/) do
  @browser.goto "http://www.seleniumframework.com/practiceform/"
end

Then(/^User click on the link where it say click on this link$/) do
 # @browser.link(href:"http://www.seleniumframework.com").click
 # @browser.link(text:"This is a link").click
  @browser.link(xpath:'//*[@id="content"]/div[1]/div/div/div/div/a').click




end

Then(/^User fill up his name$/) do
  @browser.text_field(name:"name").set('Tanvir Ravin')
  sleep 4
end

And(/^User fill up his email address$/) do
  @browser.text_field(name:"email",index:1).set('Tanvir.Ravin@gmail.com')
sleep 5

end

Then(/^User type his phone number$/) do

  @browser.text_field(name:"telephone").set('202-555-5555')
  #@browser.text_field(name:"telephone").set('(202)-555-5555')

end

Then(/^User fill up his country name$/) do
  @browser.text_field(name:"country").set('Bangladesh')

end

Then(/^User fill up company info$/) do
  @browser.text_field(name:"company").set('Microsoft')
end

And(/^User wite message on the message box$/) do
  @browser.textarea(name:"message").set('Mr.Bill gate made so much money but he does not want to share')
end

Then(/^User clcik on the submit button$/) do

  @browser.link(text:"Submit").click


end