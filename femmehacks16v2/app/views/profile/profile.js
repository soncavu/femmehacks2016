var maxheight = 80;
var showText = "See More>>>";
var hideText = "Hide<<<";

$(document).ready(function() {


  $('.expandable').each(function() {
    var text = $(this);
    if (text.height() > maxheight) {
      text.css({
        'overflow': 'hidden',
        'height': maxheight + 'px'
      });

      var link = $('<div style="position:relative;" class="showhide"><a href="#" class="showhide">' + showText + '</a></div>');
      var linkDiv = $('<div class="test"></div>');
      linkDiv.append(link);
      $(this).after(linkDiv);

      link.click(function(event) {
        event.preventDefault();
        if (text.height() > maxheight) {
          $(this).html(showText);
          text.css('height', maxheight + 'px');
        } else {
          $(this).html(hideText);
          text.css('height', 'auto');
        }
      });
    }
  });
});
