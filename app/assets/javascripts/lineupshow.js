const lineupsButton = window.document.getElementById('showLineups');
  lineupsButton.addEventListener('click', function () {
    $.ajax({
      method: 'GET',
      url: '/lineups',
      success: function(response) {
        new_html = response.data;
        window.document.getElementById('lineups').innerHTML = new_html;
      }
    });
  });
