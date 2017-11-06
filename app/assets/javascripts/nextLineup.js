function nextLineup() {
  var nextId = parseInt(window.document.getElementById('next').getAttribute('data-id')) + 1
  $.ajax({
    method: 'GET',
    url: '/lineups/' + nextId + '.json',
    success: function(response) {

     let player_html = ''
     for (var i = 0; i < response.players.length; i++) {
        player_html += '<tr><td>' + response.players[i].name + '</td><td>' + response.players[i].position +'</td><td>' + ifNull(response.players[i].projectedPoints) + '</td><td>' + ifNull(response.players[i].actualPoints) + '</td><td>' + (ifNull(response.players[i].projectedPoints) - ifNull(response.players[i].actualPoints))  + '</td><td>' + 'Starting' + '</td></tr>'
      }

      window.document.getElementById('name').innerHTML = response.name
      window.document.getElementById('description').innerHTML = response.description
      window.document.getElementById('user').innerHTML = response.user.id
      window.document.getElementById('next').setAttribute('data-id', response.id)
      window.document.getElementById('previous').setAttribute('data-id', response.id)
      window.document.getElementById('tableBody').innerHTML = player_html
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
