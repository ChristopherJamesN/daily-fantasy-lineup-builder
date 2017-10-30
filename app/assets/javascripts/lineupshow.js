const lineupsButton = window.document.getElementById('All Lineups');
  lineupsButton.addEventListener('click', function () {
    $.ajax({
      method: 'GET',
      url: '/lineups',
      success: function(response) {
        new_html = '';
        for (var i = 0; i < response.data.length; i++) {
          new_html += '<button onclick="myFunction()">' + response.data[i].id + '</button>'
        }
        window.document.getElementById('lineups').innerHTML = new_html;
      }
    });
  });
