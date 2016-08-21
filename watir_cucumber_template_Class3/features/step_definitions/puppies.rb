When(/^I open puppies website$/) do
  @browser.goto "http://puppies.herokuapp.com/"
  # @browser.link(text: "2").click
end

Then(/^I identify all female puppies and output their count$/) do
  # all_details_divs = @browser.divs(class: "details")
  # @all_female_detail_divs = all_details_divs.find_all {|detail| detail.h4s[1].text == "Female"}

  @all_female_detail_divs = @browser.divs(class: "details").find_all {|detail| detail.h4s[1].text == "Female"}


end

And(/^I print all the female puppy names$/) do
  @all_female_detail_divs.each do |element|
    parent = element.parent
    name = parent.div(class: "name")
    puts name.text
  end
end

Then(/^I print the count of puppies$/) do
  page1_count = @browser.divs(class: "puppy_list").size
  puts page1_count
  @browser.link(text: "2").click
  page2_count = @browser.divs(class: "puppy_list").size
  puts page2_count
  @browser.link(text:"3").click
  page3_count = @browser.divs(class: "puppy_list").size
  puts page3_count

  puts "Total count: #{page1_count+page2_count+page3_count}"
end