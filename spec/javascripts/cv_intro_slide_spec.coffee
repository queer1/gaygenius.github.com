require '/deck.js/support/jquery.1.6.4.min.js'
require '/js/cv_intro_slide.js'

describe 'animation of job statement', ->
  template 'intro_slide.html'

  it 'skips the animation if statement1 is already visible', ->
    spyOn $.fn, 'fadeIn'
    $('.intro .statement1').show()
    CvIntroSlide.displayStatement()
    expect($.fn.fadeIn).not.toHaveBeenCalled()

  it 'makes statement1 visible', ->
    stmt1 = $('.intro .statement1')
    expect(stmt1.is(':visible')).toBeFalsy()
    CvIntroSlide.displayStatement()
    waitsFor ->
      stmt1.is(':visible')

  it 'makes statement2 bold', ->
    stmt2 = $('.intro .statement2')
    expect(stmt2.hasClass('bold')).toBeFalsy()
    CvIntroSlide.displayStatement()
    waitsFor ->
      stmt2.hasClass('bold')

  it 'makes statement3 visible', ->
    stmt3 = $('.intro .statement3')
    expect(stmt3.is(':visible')).toBeFalsy()
    CvIntroSlide.displayStatement()
    waitsFor ->
      stmt3.is(':visible')

  it 'makes the list visible', ->
    list = $('.intro li')
    expect(list.is(':visible')).toBeFalsy()
    CvIntroSlide.displayStatement()
    waitsFor ->
      list.is(':visible')

  isTrueForAll = (array, predicate) ->
    invertGrep = true
    ($.grep array, predicate, invertGrep).length == 0

  it 'makes the list spans bold', ->
    list_spans = $('.intro li span')
    list_spans.each (index, domSpan) ->
      expect($(domSpan).hasClass('bold')).toBeFalsy()
    CvIntroSlide.displayStatement()
    waitsFor ->
      isTrueForAll list_spans, (span) -> $(span).hasClass('bold')

  it 'adjusts the left margin of the list spans', ->
    list_items = $('.intro li')
    list_items.each (index, domSpan) ->
      expect($(domSpan).css('margin-left')).toEqual('0px')
    CvIntroSlide.displayStatement()
    waitsFor ->
      isTrueForAll list_items, (li) -> $(li).css('margin-left') == '50px'

  it 'adjusts the left margin of the candidate\'s name', ->
    name_h1 = $('.intro h1')
    expect(name_h1.css('margin-left')).toEqual('0px')
    CvIntroSlide.displayStatement()
    waitsFor ->
      name_h1.css('margin-left') == '-200px'