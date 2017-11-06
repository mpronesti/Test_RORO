exports.prolist=function(req,res){

  req.getConnection(function(err,connection){
    var createquery="CREATE TABLE IF NOT EXISTS professioni_title(" +
                        "id int(11) NOT NULL AUTO_INCREMENT," + 
                        "title varchar(200) NOT NULL,"+
                        "tablename varchar(200) NOT NULL,"+
                        "subtitle varchar(200) NOT NULL,"+
                        "barcodenumber varchar(200) NOT NULL,"+
                        "PRIMARY KEY(id)"+
                        ")ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;";
    var query=connection.query(createquery,function(err,result){
        if (err)
          console.log(err);
        else
          console.log("create professioni_title table");
    });
      var query=connection.query('SELECT * FROM professioni_title',function(err,rows){
        if (err)
          console.log(err);
        else
        {
          console.log(rows);
          res.json(rows); 
        }
         
      });
  });

}

exports.mnglist=function(req,res){

  req.getConnection(function(err,connection){
    var createquery="CREATE TABLE IF NOT EXISTS manageriale_title(" +
                        "id int(11) NOT NULL AUTO_INCREMENT," + 
                        "title varchar(200) NOT NULL,"+
                        "tablename varchar(200) NOT NULL,"+
                        "subtitle varchar(200) NOT NULL,"+
                        "barcodenumber varchar(200) NOT NULL,"+
                        "PRIMARY KEY(id)"+
                        ")ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;";
    var query=connection.query(createquery,function(err,result){
        if (err)
          console.log(err);
        else
          console.log("create manageriale_title table");
    });
      var query=connection.query('SELECT * FROM manageriale_title',function(err,rows){
        if (err)
          console.log(err);
        else
        {
          console.log(rows);
          res.json(rows);
        }
          
      });
  });

}

exports.siclist=function(req,res){

  req.getConnection(function(err,connection){
    var createquery="CREATE TABLE IF NOT EXISTS sicurezza_title(" +
                        "id int(11) NOT NULL AUTO_INCREMENT," + 
                        "title varchar(200) NOT NULL,"+
                        "tablename varchar(200) NOT NULL,"+
                        "subtitle varchar(200) NOT NULL,"+
                        "barcodenumber varchar(200) NOT NULL,"+
                        "PRIMARY KEY(id)"+
                        ")ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;";
    var query=connection.query(createquery,function(err,result){
        if (err)
          console.log(err);
        else
          console.log("create sicurezza_title table");
    });
      var query=connection.query('SELECT * FROM sicurezza_title',function(err,rows){
        if (err)
          console.log(err);
        else
        {
          console.log(rows);
          res.json(rows);
        }
          
      });
  });

}

exports.protablelist=function(req,res){
  var tablename = req.params.tid;
  console.log("table:::"+ tablename);
  req.getConnection(function(err,connection){
      var query=connection.query('SELECT * FROM ' + tablename ,function(err,rows){
          
        if (err)
          console.log(err);
        else
        {
          console.log(rows);
          res.json(rows);
        }
          
      });
  });

}

exports.updatetable=function(req,res){
  var tablename=req.params.tblname;
  var all_data=req.params.alldata;
  var parse_data=JSON.parse(all_data);
  console.log(parse_data[0]);
  var updatequery="UPDATE " + tablename +
                  " SET tablename=? ,title=? ,subtitle=? ,barcodenumber=? "+
                  " WHERE tablename=?;"
  console.log(updatequery);
  req.getConnection(function(err,connection){
      var query=connection.query(updatequery,[parse_data[4],parse_data[5],parse_data[6],parse_data[7],parse_data[0]] ,function(err,result){
          
        if (err)
          console.log(err);
        else
          console.log(result);
          
      });
  });


}


exports.updatetablecontent=function(req,res){
  var oldtbn=req.params.oldtbn;
  var newtbn=req.params.newtbn;
  console.log(oldtbn + "   " +newtbn);
  var title_data=req.params.title;
  var cotent_data=req.params.content;
  var parse_titledata=JSON.parse(title_data);
  var parse_contentdata=JSON.parse(cotent_data);
  // console.log(parse_contentdata[0].title);
  req.getConnection(function(err,connection){
    var query=connection.query('DROP table ' + oldtbn ,function(err,result){
          
        if(err) 
          console.log(err);
        else {
          console.log(result);
        }
          
    });
    var createquery="CREATE TABLE IF NOT EXISTS " + newtbn + "(" +
                        "id int(11) NOT NULL AUTO_INCREMENT," + 
                        "title varchar(200) NOT NULL,"+
                        "content TEXT NOT NULL, " +
                        "PRIMARY KEY(id)"+
                        ")ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;";
    var query=connection.query(createquery,function(err,result){
        if (err)
          console.log(err);
        else
          console.log(result);
    });
    var insertquery="INSERT INTO " + newtbn + "(title,content) VALUES(?,?)";
    for (var i=0;i<parse_titledata.length;i++)
    {
      var query=connection.query(insertquery,[parse_titledata[i],parse_contentdata[i]],function(err,res){
        if (err)
          console.log(err);
      });
    }

  });



}

exports.createtable=function(req,res){
  console.log("createtable");
  var tblname=req.params.tblname;
  var tablename=req.params.tname;
  var tablemtitle=req.params.mtitle;
  var tablestitle=req.params.stitle;
  var barcodenumber=req.params.barcode;
  console.log("tabledata~~"+tablename);
  var queryData="INSERT INTO "+tblname+ " (title,tablename,subtitle,barcodenumber) VALUES (?,?,?,?)" 
  req.getConnection(function(err,connection){
      var query=connection.query(queryData,[tablemtitle,tablename,tablestitle,barcodenumber] ,function(err,result){
          
        if (err)
          console.log(err);
        else
          console.log(result);
          
      });
      var createquery="CREATE TABLE IF NOT EXISTS " + tablename + "(" +
                        "id int(11) NOT NULL AUTO_INCREMENT," + 
                        "title varchar(200) NOT NULL,"+
                        "content TEXT NOT NULL, " +
                        "PRIMARY KEY(id)"+
                        ")ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1;";
      var query=connection.query(createquery,function(err,result){
        if (err)
          console.log(err);
        else
          console.log(result);
      });
  });
}

exports.deletetable=function(req,res){

  var tablename=req.params.tid;
  var tblname=req.params.tblname;
  console.log(tablename);
  req.getConnection(function(err,connection){
      var query=connection.query('DROP table ' + tablename ,function(err,result){
          
        if(err) 
          console.log(err);
        else {
          console.log('The employee table is removed.');
          res.json(result);
        }
          
      });
      var query=connection.query('DELETE FROM '+tblname+ ' WHERE tablename=?',[tablename]  ,function(err,result){
          
        if(err) 
          console.log(err);
        else {
          console.log('The employee is removed from table');
          res.json(result);
        }
          
      });


  });
}