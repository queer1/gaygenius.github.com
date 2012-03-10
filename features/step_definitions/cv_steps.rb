def test_slide_position(slide_index, assertion)
  slideIndex = 1
  slideTop = page.evaluate_script("$.deck('getSlide', #{slideIndex}).css('top')")
  slideTop = slideTop[/^(-?\d+)px$/, 1].to_i
  assertion.call(slideTop)
  slideLeft = page.evaluate_script("$.deck('getSlide', #{slideIndex}).css('left')")
  slideLeft = slideLeft[/^(-?\d+)px$/, 1].to_i
  assertion.call(slideLeft)
end

When /^I should see the second cv slide$/ do
  test_slide_position(1, lambda { |position| position.should == 0 })
end

When /^I should not see the second cv slide$/ do
  test_slide_position(1, lambda { |position| position.should be < -20_000 })
end

When /^I click on the right arrow$/ do
  page.execute_script("$('.deck-next-link').show()")
  find('.deck-next-link').click
end