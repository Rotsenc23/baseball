DROP TABLE IF EXISTS BASEBALL; 
drop table if exists DISTRIBUIDOR;


CREATE TABLE `BASEBALL` (
  `ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `NOMBRE_EQUIPO` varchar(50) NOT NULL,
  `DESCRIPCION` varchar(1000) NOT NULL,
  `IMAGEN_URL` varchar(500) NOT NULL
  
);

insert into BASEBALL
(ID,     NOMBRE_EQUIPO,              DESCRIPCION,                                                                                                                                                                                                                                                                                                                 IMAGEN_URL) values
(1,     "New York  (Yankees)",      "Los New York Yankees son un equipo profesional de béisbol de los Estados Unidos con sede en la ciudad de Nueva York. Compiten en la División Este de la Liga Americana de las Grandes Ligas de Béisbol y disputan sus partidos como locales en el Yankee Stadium, ubicado en el borough del Bronx",                         "https://upload.wikimedia.org/wikipedia/commons/thumb/7/70/NewYorkYankees_caplogo.svg/768px-NewYorkYankees_caplogo.svg.png"),
(2,     "Boston    (Red Sox)",      "Los Boston Red Sox son un equipo profesional de béisbol de los Estados Unidos con sede en Boston, Massachusetts. Compiten en la División Este de la Liga Americana de las Grandes Ligas de Béisbol y disputan sus partidos como locales en el Fenway Park, el estadio de béisbol más antiguo de los Estados Unidos.",       "https://digital.hbs.edu/platform-digit/wp-content/uploads/sites/2/2015/09/1024px-RedSoxSecondary_Circle.svg_2.png"),
(3,     "Houston   (Astros)",       "Los Houston Astros son un equipo profesional de béisbol de los Estados Unidos con sede en Houston, Texas. Compiten en la División Oeste de la Liga Americana de las Grandes Ligas de Béisbol y disputan sus partidos como locales en el Minute Maid Park, ubicado en el centro de la ciudad texana.",                       "https://i0.wp.com/elpoderdelasideas.com/wp-content/uploads/houston_astros_logo_detail.gif?resize=550%2C459"),
(4,     "Braves    (Atlanta)",      "Los Atlanta Braves son un equipo profesional de béisbol de los Estados Unidos con sede en el área metropolitana de Atlanta, Georgia. Compiten en la División Este de la Liga Nacional de Grandes Ligas de Béisbol y disputan sus partidos como locales en el Truist Park, ubicado en la ciudad georgiana de Cumberland.",   "https://cdn.bleacherreport.net/images/team_logos/328x328/atlanta_braves.png"),
(5,     "Seattle   (Mariners)",     "Los Seattle Mariners son un equipo profesional de béisbol de los Estados Unidos con sede en Seattle, Washington. Compiten en la División Oeste de la Liga Americana de las Grandes Ligas de Béisbol y disputan sus partidos como locales en el T-Mobile Park, ubicado en el barrio de SoDo.",                               "https://upload.wikimedia.org/wikipedia/en/thumb/6/6d/Seattle_Mariners_logo_%28low_res%29.svg/1200px-Seattle_Mariners_logo_%28low_res%29.svg.png"),
(6,     "Chicago   (Cubs)",         "Los Chicago Cubs son un equipo profesional de béisbol de los Estados Unidos con sede en Chicago, Illinois. Compiten en la División Central de la Liga Nacional de las Grandes Ligas de Béisbol y disputan sus partidos como locales en el Wrigley Field, ubicado en el North Side de la ciudad",                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScKeQGzkFuZGb_F_WGY92EyPc5KcvRryasq3BrC5adYrtLLVgQRRKRd0yxFCNFrQr-YpY&usqp=CAU"),
(7,     "Toronto   (Blue Jays)",    "Los Toronto Blue Jays son un equipo profesional de béisbol de Canadá con sede en Toronto, Ontario. Compiten en la División Este de la Liga Americana de las Grandes Ligas de Béisbol y juegan sus partidos como locales en el Rogers Centre",                                                                               "https://upload.wikimedia.org/wikipedia/en/thumb/6/68/Toronto_Blue_Jays_cap.svg/1200px-Toronto_Blue_Jays_cap.svg.png"),
(8,     "San Diego (Padres)",       "Los San Diego Padres son un equipo profesional de béisbol de los Estados Unidos con sede en San Diego, California. Compiten en la División Oeste de la Liga Nacional de las Grandes Ligas de Béisbol y juegan sus partidos como locales en el Petco Park, ubicado en el centro de la ciudad.",                              "https://upload.wikimedia.org/wikipedia/commons/thumb/e/e2/SD_Logo_Brown.svg/1200px-SD_Logo_Brown.svg.png");

CREATE TABLE `DISTRIBUIDOR` (
  `ID` INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
  `NOMBRE_LIGA` varchar(500) NOT NULL,
  `SITIO_WEB` varchar(1000)
    ); 


insert into DISTRIBUIDOR
(ID,     NOMBRE_LIGA,                       SITIO_WEB)values
(1,     'Liga americana (Este)',            'https://www.mlb.com/es/standings'),
(2,     'Liga americana (Oeste)',           'https://www.mlb.com/es/standings'),
(3,     'Liga americana (Central)',         'https://www.mlb.com/es/standings'),
(4,     'Liga nacional  (Este)',            'https://www.mlb.com/es/standings'),
(5,     'Liga nacional  (Central)',         'https://www.mlb.com/es/standings'),
(6,     'Liga nacional  (Oeste)',           'https://www.mlb.com/es/standings');

ALTER TABLE BASEBALL 
add column DISTRIBUIDOR_ID int, 
add foreign key(DISTRIBUIDOR_ID) references DISTRIBUIDOR(ID);

update BASEBALL set DISTRIBUIDOR_ID= 1 where ID in (1,2);
update BASEBALL set DISTRIBUIDOR_ID= 2 where ID in (3,5);
update BASEBALL set DISTRIBUIDOR_ID= 3 where ID in (4);
update BASEBALL set DISTRIBUIDOR_ID= 4 where ID in (6);
update BASEBALL set DISTRIBUIDOR_ID= 5 where ID in (8);
update BASEBALL set DISTRIBUIDOR_ID= 6 where ID in (7);

alter table BASEBALL
modify DISTRIBUIDOR_ID int not null;