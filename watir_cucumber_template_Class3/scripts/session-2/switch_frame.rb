require 'watir-webdriver'

@browser = Watir::Browser.new :chrome

@browser.goto "http://www.yourhtmlsource.com/frames/inlineframes.html"

# tick_tick_element = @browser.element(id: "htmlsource")

frame = @browser.iframe(name: "bomb")
frame_body = frame.element(tag_name: "body")
puts frame_body.text



@browser.quit