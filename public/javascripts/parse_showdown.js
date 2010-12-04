var converter = new Showdown.converter();
var txt = $("#entrysource").html();
var html = converter.makeHtml(txt);
$("#entryresult").html(html);
