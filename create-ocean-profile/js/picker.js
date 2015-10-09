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

$( "li.security_img label img").click(function(){
  $( this ).toggleClass( "bg_opacity" );
})


// toggle security photos

$( "li.security_img" ).click(function(){
  $( "li.hiddenPic" ).toggleClass( "visiblePic" );
});

$( "li.security_img1" ).click(function(){
  $( "li.hiddenPic1" ).toggleClass( "visiblePic" );
});

$( "li.security_img2" ).click(function(){
  $( "li.hiddenPic2" ).toggleClass( "visiblePic" );
});
