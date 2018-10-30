window.onload = function() {
  // Activate semantic ui tab.
  $('.menu .item').tab();

  // Active username popup on show question page.
  $('.profile').popup();

  //dimmer to show video call button
  $('.special.cards .image').dimmer({
    on: 'hover',
  });

  //progress bar increment
  $('#level').progress();

  // Activate modal.
  $('.media').click(function() {
    $('.ui.modal').modal('show');
  });
};
