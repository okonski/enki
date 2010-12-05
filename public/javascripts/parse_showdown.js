$(document).ready(function(){
  var converter = new Showdown.converter();
  $(".gfm").each(function(content){
    $(this).html(converter.makeHtml($(this).html()));
  });
});
