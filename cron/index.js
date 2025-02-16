var request = require('request')
var cron = require('node-cron');

var fs = require("fs"); 
var data = fs.readFileSync('input.txt','utf8').toString().split('\n');

var i = 1;
data.forEach(function(value){
    cron.schedule('*/8 * * * * *', () => {
      request(value, function(error, response, body) {
        if (!error && response.statusCode == 200) {
            console.log("Phiên thứ: "+i++);
            console.log("Response: "+body);
            console.log("--------------------------");
        }
    })
    });
});