// toggle people

$( "li.faded" ).click(function() {
  $( this ).toggleClass( "selected" );
});

$( "li.faded1" ).click(function() {
  $( this ).toggleClass( "selected" );
});

$( "li.faded2" ).click(function() {
  $( this ).toggleClass( "selected" );
});


// toggle options

$( "li.security_img label img" ).click(function(){
  $( this ).toggleClass( "bg_opacity" );
});


$( "div#flight_info a" ).click(function(){
  $( "div.virgin" ).toggleClass( "visible, virgin" );
});


// $( document ).keypress(function (e) {
//   if(e.which == 13) {
//     $("li.security_img").toggleClass( "no_big_opacity" );
//   }
// });
