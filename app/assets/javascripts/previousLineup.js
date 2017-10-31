function previousLineup() {
  var previousId = parseInt(window.document.getElementById('previous').getAttribute('data-id')) - 1
  $.ajax({
    method: 'GET',
    url: '/lineups/' + previousId + '.json',
    success: function(response) {
      window.document.getElementById('name').innerHTML = response.data.attributes.name
      window.document.getElementById('description').innerHTML = response.data.attributes.description
      window.document.getElementById('user').innerHTML = response.data.attributes.user.id
      window.document.getElementById('next').setAttribute('data-id', response.data.id)
      window.document.getElementById('previous').setAttribute('data-id', response.data.id)
    }
  });
}
