function showLineups() {
   $.ajax({
      method: 'GET',
      url: '/lineups.json',
      success: function(response) {
        let new_html = ''
        for (var i = 0; i < response.data.length; i++) {
          let player_html = ''
            for (var j = 0; j < response.data[i].attributes.players.length; j++) {
              player_html += response.data[i].attributes.players[j].name + ' ' + response.data[i].attributes.players[j].position +'<br>'
            }
          new_html += response.data[i].attributes.name + '<br>' + response.data[i].attributes.description + '<br>' + player_html + '<br>'
        }
        $("#lineups").html(new_html);
      }
    });
  }
