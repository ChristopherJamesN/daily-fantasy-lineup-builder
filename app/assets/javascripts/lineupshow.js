function showLineups() {
   $.ajax({
      method: 'GET',
      url: '/lineups.json',
      success: function(response) {
        let new_html = ''
        for (var i = 0; i < response.length; i++) {
          new_html += response[i].name + '<br>' + response[i].description + '</br>'
        }
        window.document.getElementById('lineups').innerHTML = new_html;
      }
    });
  }
