function nextLineup(id) {
  var nextId = parseInt(id) + 1
  $.ajax({
    method: 'GET',
    url: '/lineups/' + nextId + '.json',
    success: function(response) {
      window.document.getElementById('name').innerHTML = response.data.attributes.name
      window.document.getElementById('description').innerHTML = response.data.attributes.description
      window.document.getElementById('user').innerHTML = response.data.attributes.user.id
    }
  });
}
