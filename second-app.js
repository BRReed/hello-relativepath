const express = require('express');
const app = express();
var seconds = 0;

function incrementSeconds() {
    seconds += 1;
}

app.get('/',function(req,res){
    res.send("This app has been up for " + seconds + " seconds.")
})

var cancel = setInterval(incrementSeconds, 1000);