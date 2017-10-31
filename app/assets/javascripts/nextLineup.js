function nextLineup() {
  var id = 2
  $.ajax({
    method: 'GET',
    url: '/lineups/' + id + '.json',
    success: function(response) {
      new_html = response.data.attributes.name
      window.document.getElementById('name').innerHTML = new_html;
    }
  });
}
