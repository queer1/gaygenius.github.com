def is_current_slide?(slide_number)
  slide_index = slide_number.to_i - 1
  page.evaluate_script("$.deck('getSlide', #{slide_index}).hasClass('deck-current')")
end

When /^I click on the right arrow$/ do
  page.execute_script("$('.deck-next-link').show()")
  find('.deck-next-link').click
end

Then /^I should be on the (\d+)(?:st|nd|th) cv slide$/ do |slide_number|
  current_path.should == '/cv/slides.html'
  is_current_slide?(slide_number).should be_true
end

Then /^I should not be on the (\d+)(?:st|nd|th) cv slide$/ do |slide_number|
  if current_path == '/cv/slides.html'
    is_current_slide?(slide_number).should be_false
  end
end