function initialize(){
  $('.edit').click(function(){
    $('.edit_form').show();
  })
}

$(document).ready(initialize);
$(document).on('page:load', initialize);
