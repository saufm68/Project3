window.onload = function() {
  // Activate semantic ui tab.
  $('.menu .item').tab();

  // Active username popup on show question page.
  $('.profile').popup();

  $('.special.cards .image').dimmer({
    on: 'hover'
  });

  $('#level').progress('increment');
};
