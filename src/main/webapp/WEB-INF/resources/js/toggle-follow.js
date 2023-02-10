$(document).ready(function() {
  $(".btn-follow").each(function() {
    var button = $(this);
    var userNo = button.data("follow-id");
    $.ajax({
      url: "/consult/follow/status",
      type: "GET",
      data: { userNo: userNo },
      success: function(response) {
        if (response.followed) {
          button.addClass("followed");
        }
      }
    });
  });
	
  $(".btn-follow").click(function() {
    var button = $(this);
    var userNo = button.data("follow-id");
    console.log(userNo);
    $.ajax({
      url: "/consult/follow",
      type: "POST",
      data: { userNo: userNo },
      success: function() {
			  button.toggleClass("followed");
		  }
   	 });
  });
});