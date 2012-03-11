require '/deck.js/support/jquery.1.6.4.min.js'
require '/js/cv_intro_slide.js'
require '/js/cv.js'

describe 'slide event handlers', ->
  it 'displays the job statement upon the transition to the second slide', ->
    spyOn(CvIntroSlide, 'displayStatement')
    $(document).trigger('deck.change', [0, 1])
    expect(CvIntroSlide.displayStatement).toHaveBeenCalled()

  it 'does not display the job statement when transitioning to another slide', ->
    spyOn(CvIntroSlide, 'displayStatement')
    $(document).trigger('deck.change', [1, 2])
    expect(CvIntroSlide.displayStatement).not.toHaveBeenCalled()