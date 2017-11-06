create database formazione1

CREATE TABLE IF NOT EXISTS manageriale_title (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(200) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;


CREATE TABLE IF NOT EXISTS sicurezza_title (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(200) NOT NULL,
  tablename varchar(200) NOT NULL,
  subtitle varchar(200) NOT NULL,
  barcodenumber varchar(200) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

CREATE TABLE IF NOT EXISTS professioni_title (
  id int(11) NOT NULL AUTO_INCREMENT,
  title varchar(200) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO manageriale_title (id, title) VALUES
(1, 'Sistema di gestione per la sicurezza OHSAS 18001 '),
(2, 'Customer Satisfaction'),
(3, 'Problem solving e sviluppo delle capacità decisionali '),
(4, 'Comunicazione efficace'),
(5, 'Project management'),
(6, 'Time management '),
(7, 'Team Working'),
(8, 'Auditor Interno Sistema di gestione per la sicurezza – OHSAS 18001'),
(9, 'Sistema di Gestione Ambientale ISO 14001'),
(10, 'Auditor Interno Sistema ISO 14001'),
(11, 'Sistema di Gestione Energia ISO 50001'),
(12, 'Sistema di Gestione Qualità ISO 9001'),
(13, 'Sistema di Gestione Qualità e ISO 31000'),
(14, 'Gli indicatori della qualità secondo la linea guida UNI 11097'),
(15, 'Sistema di Gestione Responsabilità Sociale SA 8000'),
(16, 'Auditor Interno Sistema di Gestione Responsabilità Sociale SA a 8000'),
(17, 'Integrazione dei Sistemi di Gestione secondo la norma PASS99'),
(18, 'Audit secondo la linea guida ISO 19011'),
(19, 'La gestione del rischio secondo la linea guida ISO 31000 '),
(20, 'Sistema di controllo ex D. Lgs 231/01');

INSERT INTO sicurezza_title (id, title) VALUES
(1, 'Formazione generale e rischi specifici'),
(2, 'FORMAZIONE PER DIRIGENTI'),
(3, 'Formazione del Datore di lavoro per poter svolgere formazione direttamente i compiti di
RSPP'),
(4, 'Formazione di RSPP formazione e ASPP '),
(5, 'FORMAZIONE PER PREPOSTI'),
(6, 'Formazione del Rappresentante dei Lavoratori per la Sicurezza'),
(7, 'Formazione dei lavoratori incaricati delle misure antincendio'),
(8, ' Formazione per incaricati del primo soccorso (in collaborazione con medici e personale
infermieristico'),
(9, 'Formazione per addetti alla conduzione di carrelli elevatori'),
(10, 'Formazione per addetti alla conduzione di piattaforme di lavoro elevabili'),
(11, 'Formazione per addetti alla conduzione di gru su autocarro'),
(12, 'Formazione per addetti alla conduzione di a torre'),
(13, 'Formazione per addetti alla conduzione di gru mobili '),
(14, 'Formazione per addetti alla conduzione di trattori agricoli e forestali '),
(15, 'Formazione per addetti alla conduzione di mezzi di movimentazione terra '),
(16, 'Formazione per addetti alla conduzione di pompe per calcestruzzo ');

INSERT INTO professioni_title (id, title) VALUES
(1, 'Panificatore - corso base'),
(2, 'Pasticcere - corso base'),
(3, 'Addetto banco macelleria - corso base'),
(4, ' Pronto cuoco - corso base'),
(5, 'Pizzaiolo - corso base '),
(6, 'Addetto pescheria - corso base'),
(7, 'Addetto banco salumi e formaggi - corso base');



CREATE TABLE IF NOT EXISTS professioni_data (
  id int(11) NOT NULL AUTO_INCREMENT,
  maintitle varchar(200) ,
  subtitle varchar(200) ,
  data1 varchar(200) ,
  data2 varchar(200) ,
  data3 varchar(200) ,
  data4 varchar(200) ,
  data5 varchar(200) ,
  data6 varchar(200) ,
  data7 varchar(200) ,
  data8 varchar(200) ,
  data9 varchar(200) ,
  data10 varchar(200) ,
  data11 varchar(200) ,
  data12 varchar(200) ,
  data13 varchar(200) ,
  data14 varchar(200) ,
  data15 varchar(200) ,
  data16 varchar(200) ,
  data17 varchar(200) ,
  data18 varchar(200) ,
  data19 varchar(200) ,
  data20 varchar(200) ,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO professioni_data (id, maintitle,subtitle,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20) VALUES
(1, 'Sistema di gestione per la sicurezza OHSAS 18001','Sistema di gestione per la sicurezza OHSAS 18001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(2, 'Customer Satisfaction','Customer Satisfaction','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(3, 'Problem solving e sviluppo delle capacità decisionali','Problem solving e sviluppo delle capacità decisionali','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(4, 'Comunicazione efficace','Comunicazione efficace','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(5, 'Project management','Project management','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(6, 'Time management ','Time management ','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(7, 'Team Working','Team Working','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20');



CREATE TABLE IF NOT EXISTS manageriale_data (
  id int(11) NOT NULL AUTO_INCREMENT,
  maintitle varchar(200) ,
  subtitle varchar(200) ,
  data1 varchar(200) ,
  data2 varchar(200) ,
  data3 varchar(200) ,
  data4 varchar(200) ,
  data5 varchar(200) ,
  data6 varchar(200) ,
  data7 varchar(200) ,
  data8 varchar(200) ,
  data9 varchar(200) ,
  data10 varchar(200) ,
  data11 varchar(200) ,
  data12 varchar(200) ,
  data13 varchar(200) ,
  data14 varchar(200) ,
  data15 varchar(200) ,
  data16 varchar(200) ,
  data17 varchar(200) ,
  data18 varchar(200) ,
  data19 varchar(200) ,
  data20 varchar(200) ,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO manageriale_data (id, maintitle,subtitle,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20) VALUES
(1, 'Sistema di gestione per la sicurezza OHSAS 18001','Sistema di gestione per la sicurezza OHSAS 18001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(2, 'Customer Satisfaction','Customer Satisfaction','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(3, 'Problem solving e sviluppo delle capacità decisionali','Problem solving e sviluppo delle capacità decisionali','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(4, 'Comunicazione efficace','Comunicazione efficace','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(5, 'Project management','Project management','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(6, 'Time management ','Time management ','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(7, 'Team Working','Team Working','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(8, 'Auditor Interno Sistema di gestione per la sicurezza - OHSAS 18001','Auditor Interno Sistema di gestione per la sicurezza - OHSAS 18001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(9, 'Sistema di Gestione Ambientale ISO 14001','Sistema di Gestione Ambientale ISO 14001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(10, 'Auditor Interno Sistema ISO 14001','Auditor Interno Sistema ISO 14001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(11, 'Sistema di Gestione Energia ISO 50001','Sistema di Gestione Energia ISO 50001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(12, 'Sistema di Gestione Qualità ISO 9001','Sistema di Gestione Qualità ISO 9001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(13, 'Sistema di Gestione Qualità e ISO 31000','Sistema di Gestione Qualità e ISO 31000','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(14, 'Gli indicatori della qualità secondo la linea guida UNI 11097','Gli indicatori della qualità secondo la linea guida UNI 11097','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(15, 'Sistema di Gestione Responsabilità Sociale SA 8000','Sistema di Gestione Responsabilità Sociale SA 8000','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(16, 'Auditor Interno Sistema di Gestione Responsabilità Sociale SA a 8000','Auditor Interno Sistema di Gestione Responsabilità Sociale SA a 8000','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(17, 'Integrazione dei Sistemi di Gestione secondo la norma PASS99','Integrazione dei Sistemi di Gestione secondo la norma PASS99','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(18, 'Audit secondo la linea guida ISO 19011','Audit secondo la linea guida ISO 19011','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(19, 'La gestione del rischio secondo la linea guida ISO 31000 ','La gestione del rischio secondo la linea guida ISO 31000 ','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(20, 'Sistema di controllo ex D. Lgs 231/01','Sistema di controllo ex D. Lgs 231/01','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20');


CREATE TABLE IF NOT EXISTS security_data (
  id int(11) NOT NULL AUTO_INCREMENT,
  maintitle varchar(200) ,
  subtitle varchar(200) ,
  data1 varchar(200) ,
  data2 varchar(200) ,
  data3 varchar(200) ,
  data4 varchar(200) ,
  data5 varchar(200) ,
  data6 varchar(200) ,
  data7 varchar(200) ,
  data8 varchar(200) ,
  data9 varchar(200) ,
  data10 varchar(200) ,
  data11 varchar(200) ,
  data12 varchar(200) ,
  data13 varchar(200) ,
  data14 varchar(200) ,
  data15 varchar(200) ,
  data16 varchar(200) ,
  data17 varchar(200) ,
  data18 varchar(200) ,
  data19 varchar(200) ,
  data20 varchar(200) ,
  PRIMARY KEY (id)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

INSERT INTO security_data (id, maintitle,subtitle,data1,data2,data3,data4,data5,data6,data7,data8,data9,data10,data11,data12,data13,data14,data15,data16,data17,data18,data19,data20) VALUES
(1, 'Sistema di gestione per la sicurezza OHSAS 18001','Sistema di gestione per la sicurezza OHSAS 18001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(2, 'Customer Satisfaction','Customer Satisfaction','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(3, 'Problem solving e sviluppo delle capacità decisionali','Problem solving e sviluppo delle capacità decisionali','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(4, 'Comunicazione efficace','Comunicazione efficace','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(5, 'Project management','Project management','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(6, 'Time management ','Time management ','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(7, 'Team Working','Team Working','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(8, 'Auditor Interno Sistema di gestione per la sicurezza - OHSAS 18001','Auditor Interno Sistema di gestione per la sicurezza - OHSAS 18001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(9, 'Sistema di Gestione Ambientale ISO 14001','Sistema di Gestione Ambientale ISO 14001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(10, 'Auditor Interno Sistema ISO 14001','Auditor Interno Sistema ISO 14001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(11, 'Sistema di Gestione Energia ISO 50001','Sistema di Gestione Energia ISO 50001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(12, 'Sistema di Gestione Qualità ISO 9001','Sistema di Gestione Qualità ISO 9001','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(13, 'Sistema di Gestione Qualità e ISO 31000','Sistema di Gestione Qualità e ISO 31000','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(14, 'Gli indicatori della qualità secondo la linea guida UNI 11097','Gli indicatori della qualità secondo la linea guida UNI 11097','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(15, 'Sistema di Gestione Responsabilità Sociale SA 8000','Sistema di Gestione Responsabilità Sociale SA 8000','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(16, 'Auditor Interno Sistema di Gestione Responsabilità Sociale SA a 8000','Auditor Interno Sistema di Gestione Responsabilità Sociale SA a 8000','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(17, 'Integrazione dei Sistemi di Gestione secondo la norma PASS99','Integrazione dei Sistemi di Gestione secondo la norma PASS99','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(18, 'Audit secondo la linea guida ISO 19011','Audit secondo la linea guida ISO 19011','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(19, 'La gestione del rischio secondo la linea guida ISO 31000 ','La gestione del rischio secondo la linea guida ISO 31000 ','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20'),
(20, 'Sistema di controllo ex D. Lgs 231/01','Sistema di controllo ex D. Lgs 231/01','data1','data2','data3','data4','data5','data6','data7','data8','data9','data10','data11','data12','data13','data14','data15','data16','data17','data18','data19','data20');