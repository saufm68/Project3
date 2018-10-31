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
    var img = $(this)
      .find('img')
      .attr('src');
    $('.ui.modal')
      .find('img')
      .attr('src', img);
    $('.ui.modal').modal('show');
  });

  //Activate Dropdown
  $('.ui.dropdown').dropdown();
};
