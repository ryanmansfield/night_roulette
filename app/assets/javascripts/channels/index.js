$(window).load(function(){
  $('#wrapper').addClass('loaded');
})

$('.more-info').click(function(){
  $("#card").toggleClass('flip');
  $('#arrow').remove();
});
$('#background').click(function(){
  $('#card').removeClass('flip');
})
