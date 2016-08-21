Given(/^I open practiceselenium website$/) do
  @browser.goto "www.practiceselenium.com/practice-form.html"
end

Then(/^I fill the page with values:$/) do |table|
  # table is a table.hashes.keys # => [:firstname, :lastname, :xyz]
  puts table.hashes

  # table.hashes.each do |hsh|
  #   puts hsh[:firstname]
  #   puts hsh[:lastname]
  # end

end

