$(function() {
  $('tr').on('click', function() {
    if ( $(this).attr('data-link') ) {
      window.location = $(this).attr('data-link');
    }
  });
});
