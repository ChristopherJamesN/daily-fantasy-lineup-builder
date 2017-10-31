function showLineups() {
    $.ajax({
      method: 'GET',
      url: '/lineups.json',
      success: function(response) {
        let new_html = response
        for (var i = 0; i < response.length; i++) {
          new_html += response[i].name + '<br>' + response[i].description + '</br>'
        }
        window.document.getElementById('lineups').innerHTML = new_html;
      }
    });
  });

function nextLineup() {
  var id = @lineup.id
  $.ajax({
    method: 'GET',
    url: '/lineups/' + id + '.json',
    success: function(response) {
      new_html += response[0].name
      window.document.getElementById('name').innerHTML = new_html;
    }
  });
});
