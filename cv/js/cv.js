// Add your custom JavaScript for your KeyDown presentation here

function handleDeckChange(event, from, to) {
    if (to == 1) {
        CvIntroSlide.displayStatement();
    }
}

$(document).bind('deck.change', handleDeckChange);