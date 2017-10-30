function attachListeners() {

  const lineupsButton = window.document.getElementById('showLineups');
    lineupsButton.addEventListener('click', function () {
      $.ajax({
        method: 'GET',
        url: '/lineups.json',
        success: function(response) {
          let new_html = ''
          for (var i = 0; i < response.data.length; i++) {
            new_html += response.data[i].attributes.name + '<br>'
          }
          window.document.getElementById('lineups').innerHTML = new_html;
        }
      });
    });
}

window.onload = () => {
  attachListeners();
}
