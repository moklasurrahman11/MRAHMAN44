require 'watir-webdriver'

@browser = Watir::Browser.new :chrome

@browser.goto "http://www.seleniumframework.com/Practiceform/"

@browser.button(id: "button1").click

# use either @browser.windows or @browser.driver.window_handles
puts @browser.windows

puts @browser.driver.window_handles

@browser.quit
