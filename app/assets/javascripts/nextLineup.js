function nextLineup(id) {
  var nextId = parseInt(id) + 1
  $.ajax({
    method: 'GET',
    url: '/lineups/' + nextId + '.json',
    success: function(response) {
      new_html = response.data.attributes.name
      window.document.getElementById('name').innerHTML = new_html;
    }
  });
}
