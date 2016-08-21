# When(/^I open practiceselenium website$/) do
#   @browser.goto "http://www.practiceselenium.com/practice-form.html"
# end

And(/^I fill the form with values$/) do
  first_name = @browser.text_field(name: 'firstname')
  last_name = @browser.text_field(name: 'lastname')
  first_name.set 'firstname'
  last_name.set 'lastname'


  male_radio = @browser.radio(id: 'sex-0')
  female_radio = @browser.radio(id: 'sex-1')
  female_radio.click

  exp_1 = @browser.radio(id: 'exp-0')
  exp_2 = @browser.radio(id: 'exp-1')
  exp_3 = @browser.radio(id: 'exp-2')
  exp_3.set

  date_if_stopped = @browser.text_field(id: 'datepicker')
  date_if_stopped.set '1/1/2000'

  black_tea = @browser.checkbox(id: 'tea1')
  red_tea = @browser.checkbox(id: 'tea2')
  oolong_tea = @browser.checkbox(id: 'tea3')
  oolong_tea.set

  harmless_addiction = @browser.checkbox(id: 'tool-1')
  harmless_addiction.set

  continents_select = @browser.select_list(id: 'continents')
  continents_select.select 'Asia'

  another_select_list = @browser.select_list(id: 'selenium_commands')
  another_select_list.select 'Navigation Commands'



end

And(/^I hit submit button$/) do
  ok_button = @browser.button(id: 'submit')
  ok_button.click
end

Then(/^I go back to Welcome page and verify title$/) do
  welcome_page_title = @browser.title
  expect(welcome_page_title).to eql('Welcome')
end


And(/^I fill "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)" "([^"]*)"$/) do |firstname, lastname, sex, yrs, date_stopped|
  @browser.text_field(name: 'firstname').set firstname
  @browser.text_field(name: 'lastname').set lastname
  @browser.radio(value: sex).set
  @browser.radio(value: yrs).set
  @browser.text_field(id: 'datepicker').set date_stopped
end

And(/^I fill "([^"]*)" "([^"]*)" "([^"]*)" and "([^"]*)"$/) do |tea, excited_about, continent, selenium_commands|
  @browser.checkbox(value: tea).set
  @browser.checkbox(value: excited_about).set
  @browser.select_list(id: 'continents').select continent
  @browser.select_list(id: 'selenium_commands').select selenium_commands
end

When(/^I open google$/) do
  @browser.goto "http://www.google.com"
end

And(/^I type "([^"]*)"$/) do |arg|
  @browser.text_field(id: "lst-ib").set arg
end

Then(/^I get "([^"]*)"$/) do |arg|
  first_link = @browser.links[25]

  expect(first_link.attribute_value('title')).to eql(arg)
end