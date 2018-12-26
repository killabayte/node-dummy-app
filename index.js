var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Deployed by Spinnaker: Dummy-App v.0.0.1');
});

var server = app.listen(3000, function () {
  var host = server.address().address;
  var port = server.address().port;

  console.log('Example app listening on port %s', port);
});