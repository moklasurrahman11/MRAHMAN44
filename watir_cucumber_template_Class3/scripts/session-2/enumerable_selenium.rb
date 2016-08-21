require 'watir-webdriver'

@browser = Watir::Browser.new :chrome

@browser.goto "http://www.seleniumframework.com/Practiceform/"

all_buttons = @browser.buttons

browser_text_buttons = all_buttons.find_all {|button|button.text.include?"Message"}

message_window_button = browser_text_buttons[0]
message_window_button.click

# browser_text_buttons.each do |ele|
#   puts ele.html
# end

sleep 5

@browser.quit

