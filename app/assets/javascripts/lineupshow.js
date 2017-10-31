function showLineups() {
   $.ajax({
      method: 'GET',
      url: '/lineups.json',
      success: function(response) {
        let new_html = ''
        for (var i = 0; i < response.data.length; i++) {
          new_html += response.data[i].attributes.name + '<br>' + response.data[i].attributes.description + '</br>'
        }
        window.document.getElementById('lineups').innerHTML = new_html;
      }
    });
  }
