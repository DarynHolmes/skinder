$(document).on('ready page:load', function () {
  console.log("Page load")
  if ($("#display-list").length > 0){
  	tick(0);
  }
});


function updateMessages() {
  var latest_comment = $(".comment:first-child")
  var after = new Date("2010-01-01");
  if(latest_comment.length > 0) {
    after = latest_comment.attr("data-time");
  }
	$.getScript("/messages.js?after=" + after); // Executes the script when it is returned
}

function tick(count) {
  if (count <= 0) {
    // $("#timer").html("Updating now");
    updateMessages();
    count = 5;
  } else {
    // $("#timer").html("Updating in " + count);
    count--;
  }
  // console.log("Updating in " + count);
  setTimeout(function() { tick(count); }, 1000);
}