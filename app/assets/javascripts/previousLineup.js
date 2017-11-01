function previousLineup() {
  var previousId = parseInt(window.document.getElementById('previous').getAttribute('data-id')) - 1
  $.ajax({
    method: 'GET',
    url: '/lineups/' + previousId + '.json',
    success: function(response) {

      let player_html = ''
      for (var i = 0; i < response.data.attributes.players.length; i++) {
         player_html += '<tr><td>' + response.data.attributes.players[i].name + '</td><td>' + response.data.attributes.players[i].position +'</td><td>' + ifNull(response.data.attributes.players[i].projectedPoints) + '</td><td>' + ifNull(response.data.attributes.players[i].actualPoints) + '</td><td>' + (ifNull(response.data.attributes.players[i].projectedPoints) - ifNull(response.data.attributes.players[i].actualPoints))  + '</td><td>' + 'Starting' + '</td></tr>'
       }

      window.document.getElementById('name').innerHTML = response.data.attributes.name
      window.document.getElementById('description').innerHTML = response.data.attributes.description
      window.document.getElementById('user').innerHTML = response.data.attributes.user.id
      window.document.getElementById('next').setAttribute('data-id', response.data.id)
      window.document.getElementById('previous').setAttribute('data-id', response.data.id)
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
