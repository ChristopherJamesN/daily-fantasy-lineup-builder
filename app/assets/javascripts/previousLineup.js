function previousLineup() {
  var previousId = parseInt($("#previous").attr('data-id')) - 1
  $.ajax({
    method: 'GET',
    url: '/lineups/' + previousId + '.json',
    success: function(response) {

      var player_html = ''
      for (var i = 0; i < response.data.attributes.players.length; i++) {
         player_html += '<tr><td>' + response.data.attributes.players[i].name + '</td><td>' + response.data.attributes.players[i].position +'</td><td>'
         + ifNull(response.data.attributes.players[i].projectedPoints) + '</td><td>' + ifNull(response.data.attributes.players[i].actualPoints) + '</td><td>'
         + (ifNull(response.data.attributes.players[i].projectedPoints) - ifNull(response.data.attributes.players[i].actualPoints))
         + '</td><td>' + response['data']['attributes']['lineups-players'][i]['player_starting'] + '</td></tr>'
       }

       var sum = 0
       for (var i = 0; i < response.data.attributes.players.length; i++) {
         sum += response.data.attributes.players[i].actualPoints
       }

       $("#name").html('<strong class="col-sm-4">Name:</strong>' + response.data.attributes.name)
       $("#description").html('<strong class="col-sm-4">Description:</strong>' + response.data.attributes.description)
       $("#total_points").html('<strong class="col-sm-4">Total Points:</strong>' + sum)
       $("#user").html(response.data.attributes.user.id)
       $("#next").attr('data-id', response.data.id)
       $("#previous").attr('data-id', response.data.id)
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
