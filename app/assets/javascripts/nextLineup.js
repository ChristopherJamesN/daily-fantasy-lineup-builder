function nextLineup() {
  var nextId = parseInt($("#next").attr("data-id")) + 1
  $.ajax({
    method: 'GET',
    url: '/lineups/' + nextId + '.json',
    success: function(response) {

     let player_html = ''
     for (var i = 0; i < response.players.length; i++) {
        player_html += '<tr><td>' + response.players[i].name + '</td><td>' + response.players[i].position +'</td><td>' + ifNull(response.players[i].projectedPoints) + '</td><td>' + ifNull(response.players[i].actualPoints) + '</td><td>' + (ifNull(response.players[i].projectedPoints) - ifNull(response.players[i].actualPoints))  + '</td><td>' + response.lineups_players[i].player_starting + '</td></tr>'
      }

      $("#name").html(response.name)
      $("#description").html(response.description)
      $("#user").html(response.user_id)
      $("#next").attr('data-id', response.id)
      $("#previous").attr('data-id', response.id)
      $("#tableBody").html(player_html)
    }
  });
}

function ifNull(response) {
  if (response === null){
    return ''
  } else {
    return response
  }
}
