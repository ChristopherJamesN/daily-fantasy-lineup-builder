$(function () {
  $('form').submit(function(event) {
    event.preventDefault();

    var values = $(this).serialize();

    var posting = $.post('/players', values);

    posting.done(function(data) {
      var player = data;
      $("#playerName").text(player["name"]);
      $("#playerPosition").text(player["position"]);
      $("#playerActualPoints").text(player["actualPoints"]);
      $("#playerProjectedPoints").text(player["projectedPoints"]);
    });
  });
});
