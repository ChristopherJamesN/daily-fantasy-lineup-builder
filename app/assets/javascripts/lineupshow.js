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



function sortTable(n) {
  var table, rows, switching, i, x, y, shouldSwitch, dir, switchcount = 0;
  table = document.getElementById("myTable");
  switching = true;
  dir = "asc";
  while (switching) {
    switching = false;
    rows = table.getElementsByTagName("TR");
    for (i = 1; i < (rows.length - 1); i++) {
      shouldSwitch = false;
      x = rows[i].getElementsByTagName("TD")[n];
      y = rows[i + 1].getElementsByTagName("TD")[n];
      if (dir == "asc") {
        if (x.innerHTML.toLowerCase() > y.innerHTML.toLowerCase()) {
          shouldSwitch= true;
          break;
        }
      } else if (dir == "desc") {
        if (x.innerHTML.toLowerCase() < y.innerHTML.toLowerCase()) {
          shouldSwitch= true;
          break;
        }
      }
    }
    if (shouldSwitch) {
      rows[i].parentNode.insertBefore(rows[i + 1], rows[i]);
      switching = true;
      switchcount ++;
    } else {
      if (switchcount == 0 && dir == "asc") {
        dir = "desc";
        switching = true;
      }
    }
  }
}
