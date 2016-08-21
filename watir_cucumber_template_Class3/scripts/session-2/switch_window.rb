require 'watir-webdriver'

@browser = Watir::Browser.new :chrome

@browser.goto "http://www.seleniumframework.com/Practiceform/"

@browser.button(id: "button1").click

@browser.windows[0].use

puts @browser.title


@browser.window(title: "Selenium Framework | Selenium, Cucumber, Ruby, Java et al.").use
@browser.window.maximize

@browser.link(text: "ABOUT").click

@browser.window(title: "title of parent window").use


@browser.quit