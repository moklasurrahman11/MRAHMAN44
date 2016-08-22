Before do

  @browser = Watir::Browser.new :ff


end


After do
 @browser.window.maximize
 # @browser.quit
end



