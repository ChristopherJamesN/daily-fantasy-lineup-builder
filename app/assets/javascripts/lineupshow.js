function showLineups() {
   $.ajax({
      method: 'GET',
      url: '/lineups.json',
      success: function(response) {
        let new_html = ''
        for (var i = 0; i < response.length; i++) {
          let player_html = ''
            for (var j = 0; j < response[i].players.length; j++) {
              player_html += response[i].players[j].name + ' ' + response[i].players[j].position +'<br>'
            }
          new_html += response[i].name + '<br>' + response[i].description + '<br>' + player_html + '<br>'
        }
        window.document.getElementById('lineups').innerHTML = new_html;
      }
    });
  }
