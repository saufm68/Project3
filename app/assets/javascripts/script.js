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

  // Display file name after selecting image or video file.
  $('.file').on('change', function() {
    $('.upload').hide();
    $('.reply .ui.image.label').css('display', 'inline-block');
    $('.reply .ui.image.label .media').html(this.files[0].name);
  });

  // Show upload button and hide label if user clicks delete icon
  $('.reply .ui.image.label .delete.icon').click(function() {
    $('.reply .ui.image.label').css('display', 'none');
    $('.file').val('');
    $('.upload').show();
  });
};
