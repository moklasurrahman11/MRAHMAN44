require 'watir-webdriver'

@browser = Watir::Browser.new :chrome

@browser.goto "http://www.seleniumframework.com/Practiceform/"

@browser.button(id: "alert").click
sleep 5

if(@browser.alert.exists?)
   @browser.alert.ok
end


@browser.quit