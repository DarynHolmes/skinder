$(document).on('ready page:load', function () {
  console.log("Page load")
  
  setupCommentForm();
  tick(0);
});

function setupCommentForm() {
  if ($("#new_message").length > 0) {
    submit = $('input[name="commit"]')
    submit.attr('disabled',true);
    $('#message_body').keyup(function(){
        if($(this).val().length !=0)
            submit.attr('disabled', false);            
        else
            submit.attr('disabled',true);
    });
  }
}


function updateMessages() {
  var latest_comment = $(".comment:first-child")
  var event_id = $("#commentary").attr("data-event");
  var after = new Date("2010-01-01");
  if(latest_comment.length > 0) {
    after = latest_comment.attr("data-time");
  }
	$.getScript("/events/"+event_id+"/messages.js?after=" + after); // Executes the script when it is returned
}

function tick(count) {
  if ($("#commentary").length > 0){
    if (count <= 0) {
      // $("#timer").html("Updating now");
      updateMessages();
      count = 1;
    } else {
      // $("#timer").html("Updating in " + count);
      count--;
    }
    // console.log("Updating in " + count);
    setTimeout(function() { tick(count); }, 1000);
  }
}