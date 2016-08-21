When(/^I open seleniumframework practiceform website$/) do
  @browser.goto "http://www.seleniumframework.com/Practiceform/"
end

And(/^I click open new browser window$/) do
  puts "Before opening new window title -- #{@browser.title}"
  @browser.button(id: "button1").click

  all_windows = @browser.windows
  puts "All window handles array after clicking new browser window -- #{all_windows}"
  all_windows.each do |window|
    puts window.title
  end
end

Then(/^I switch to new window$/) do
  puts "Switching to new window...."
  @browser.window(title: "Selenium Framework | Selenium, Cucumber, Ruby, Java et al.").use
  # @browser.windows[1].use
  puts "Printing new window url -- #{@browser.url}"
end

And(/^back to parent window$/) do
  @browser.window(title: "Selenium Framework | Practiceform").use
  puts "Parent window url -- #{@browser.url}"
end

And(/^I click javascript alert window$/) do
  @browser.element(id: "alert").click
end

Then(/^I print the text in javascript alert$/) do
  if @browser.alert.exists?
    alert = @browser.alert
    puts "Alert text -- #{alert.text}"
    expect(alert.text).to eql("Please share this website with your friends and in your organization.")
    puts "Clicking ok on alert..."
    sleep 5
    alert.ok
  end
end

And(/^I click new browser tab$/) do
  #Without maximize, the view port sometimes is too short and driver is not able to click on the button
  @browser.window.maximize
  # new_browser_tab = @browser.buttons.find {|button| button.text == "New Browser Tab"}
  # new_browser_tab.click
  @browser.button(text: "New Browser Tab").click
end

Then(/^I switch to new tab$/) do
  all_windows = @browser.windows
  all_windows.each do |window|
    puts window.title
  end
  @browser.window(title: "Selenium Framework | Selenium, Cucumber, Ruby, Java et al.").use
  puts "Printing url of newly opened tab -- #{@browser.url}"
end

And(/^back to main window$/) do
  @browser.window(title: "Selenium Framework | Practiceform").use
  puts "After switching back to parent window , printing url -- #{@browser.url}"
end

And(/^I click new message window button$/) do
  @browser.window.maximize
  puts "Parent window handle -- #{@browser.driver.window_handles}"
  @parent_window_handle = @browser.driver.window_handles[0]
  @browser.button(text: "New Message Window").click
end


Then(/^I print text for message window$/) do
  # Since message window doesn't have title or url to differentiate it, we are not able to use @browser.windows appoach
  # either we have to use index or use another approach as below
  all_windows = @browser.driver.window_handles

  all_windows.each do |window|
    puts window
  end

  @browser.driver.switch_to.window(all_windows.last)
  puts "Message window text -- #{@browser.text}"
end

When(/^I open yourhtmlsource website$/) do
  @browser.goto "http://yourhtmlsource.com/frames/inlineframes.html"
end

Then(/^I switch to frame and print its text$/) do
  frame = @browser.iframe(name: "bomb")
  frame_body = frame.element(tag_name: "body")
  puts frame_body.text
end

