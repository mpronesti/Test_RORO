
/**
 * Module dependencies.
 */

var express = require('express');
var routes = require('./routes');
var http = require('http');
var path = require('path');

//load customers route
var customers = require('./routes/customers'); 
var corsi=require('./routes/corsi');
// var roro=require('./routes/roro');
var app = express();

var connection  = require('express-myconnection'); 
var mysql = require('mysql');

// all environments
app.set('port', process.env.PORT || 4300);
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'ejs');
//app.use(express.favicon());
app.use(express.logger('dev'));
app.use(express.json());
app.use(express.urlencoded());
app.use(express.methodOverride());

app.use(express.static(path.join(__dirname, 'public')));

// development only
if ('development' == app.get('env')) {
  app.use(express.errorHandler());
}

/*------------------------------------------
    connection peer, register as middleware
    type koneksi : single,pool and request 
-------------------------------------------*/

app.use(
    
    connection(mysql,{
        
        // host: 'localhost',
        // user: 'root',
        // password : 'root',
        // port : 3306, //port mysql
        // database:'rorobase'
        host: '89.46.111.17',
        user: 'Sql965503',
        password : 'xa7f7yzt05',
        port : 3306, //port mysql
        database:'Sql965503_5'
    },'pool') //or single

);



// app.get('/', routes.index);
// app.get('/roro',routes.roro);

// app.get('/customers', customers.list);
// app.get('/customers/add', customers.add);
// app.post('/customers/add', customers.save);
// app.get('/customers/delete/:id', customers.delete_customer);
// app.get('/customers/edit/:id', customers.edit);
// app.post('/customers/edit/:id',customers.save_edit);

app.get('/',routes.index);
app.get('/roro', function(req,res){
	res.render('roro.ejs',{title:'roro'});
});
app.get('/contatii',function (reg,res) {
	// body...
	res.render('contatii.ejs',{title:'contatii'});
});



app.get('/corsi/professioni',function(req,res){
    res.sendfile('./views/professioni.html');
});
app.post('/corsi/pro/list',corsi.prolist);
app.post('/corsi/pro/table/:tid',corsi.protablelist);

app.get('/corsi/manageriale',function(req,res){
    res.sendfile('./views/manageriale.html');
});
app.post('/corsi/mng/list',corsi.mnglist);
// app.post('/corsi/mng/table/:tid',corsi.mngtablelist);
app.get('/corsi/sicurezza',function(req,res){
    res.sendfile('./views/sicurezza.html');
});
app.post('/corsi/sic/list',corsi.siclist);

app.get('/professioni/edittable',function(req,res){
    res.sendfile('./views/pro_edittable.html');
});

app.get('/manageriale/edittable',function(req,res){
    res.sendfile('./views/mng_edittable.html');
});

app.get('/sicurezza/edittable',function(req,res){
    res.sendfile('./views/sic_edittable.html');
});



app.post('/deletetable/:tblname/:tid',corsi.deletetable);
app.post('/createtable/:tblname/:tname/:mtitle/:stitle/:barcode',corsi.createtable);

app.post('/updatetable/:tblname/:alldata',corsi.updatetable);
app.post('/updatetablecontent/:oldtbn/:newtbn/:title/:content',corsi.updatetablecontent);
app.use(app.router);

http.createServer(app).listen(app.get('port'), function(){
  console.log('Express server listening on port ' + app.get('port'));
});
