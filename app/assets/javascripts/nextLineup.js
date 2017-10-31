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
