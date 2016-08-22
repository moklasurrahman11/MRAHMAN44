Given(/^User navigate to facebook signup page$/) do
  @browser.goto "https://www.facebook.com/"
end

Then(/^User fill in all the requires information$/) do


@browser.text_field(id:'u_0_1').set ("Sadrul")
@browser.text_field(id:'u_0_3').set ("Amin")
@browser.text_field(id:'u_0_6').set ("222-222-0000")
@browser.text_field(id:'u_0_9').set ("222-222-0000")

@browser.text_field(id:'u_0_b').set ("Sadrul1!")
@browser.select(id:'month').select ("Feb")
@browser.select(id:'day').select ("10")
@browser.select(id:'year').select ("1985")
@browser.radio(id:'u_0_e').click                          #clicks on female radio button
@browser.radio(id:'u_0_f').click                          #Clicks on Male Radio button
@browser.button(id:'u_0_j').click













end

And(/^clicks on sing up button$/) do
  pending
end

