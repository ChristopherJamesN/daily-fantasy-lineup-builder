function showLineups() {
   $.ajax({
      method: 'GET',
      url: '/lineups.json',
      success: function(response) {
        var new_html = ''
        for (var i = 0; i < response.data.length; i++) {

          var sortedPlayers = response.data[i].attributes.players.sort(function(a,b) {
            var nameA = a.name.toUpperCase(); // ignore upper and lowercase
            var nameB = b.name.toUpperCase(); // ignore upper and lowercase
              if (nameA < nameB) {
                return -1;
              }
              if (nameA > nameB) {
                return 1;
              }

              // names must be equal
              return 0;
          })

          var player_html = ''
          for (var j = 0; j < sortedPlayers.length; j++) {
            player_html += sortedPlayers[j].name + ' ' + sortedPlayers[j].position +'<br>'
          }
          new_html += response.data[i].attributes.name + '<br>' + response.data[i].attributes.description + '<br>' + player_html + '<br>'
        }
        $("#lineups").html(new_html);
      }
    });
  }
