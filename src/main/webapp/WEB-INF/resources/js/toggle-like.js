$(document).ready(function() {
  $(".btn-like").each(function() {
    var button = $(this);
    var commentId = button.data("comment-id");
    var likeCountSpan = button.siblings(".like-count");

    $.ajax({
      url: "/consult/like/status",
      type: "GET",
      data: { commentId: commentId },
      success: function(response) {
        if (response.liked) {
          button.addClass("liked");
        }
        console.log(response.liked);
        likeCountSpan.text(response.likeCount);
      }
    });
  });

  $(".btn-like").click(function() {
    var button = $(this);
    var commentId = button.data("comment-id");
    var likeCountSpan = button.siblings(".like-count");
    $.ajax({
      url: "/consult/like",
      type: "POST",
      data: { commentId: commentId },
      success: function(response) {
        likeCountSpan.text(response.likeCount);
        button.toggleClass("liked");
      }
    });
  });
});
