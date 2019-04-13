delete from record;
delete from plays;
delete from gives;
delete from aboutdisks;
delete from aboutconcerts;
delete from opinions;
delete from members;
delete from buytickets;
delete from buydisks;
delete from perform;
delete from musicgroup;
delete from song;
delete from instrument;
delete from has;
delete from composes;
delete from concerts;
delete from musician;
delete from tickets;
delete from user;
delete from disk;
/*musicians*/
insert musicians values("Pepe", "gonzalez", "55, Avda Caballeria Española", 288805, 1039485, "Madrid", "Madrid", "78009876S");
insert musicians values("Pedro", "gonzalez", "64, Calle Avila", 288804, 198456123, "Alcala de Henares", "Madrid", "55669987S");
insert musicians values("Edward", "Gomez", "11, Avda Figueroa", 288809, 102938659, "Guadalajara", "Guadalajara", "02369874P");
insert musicians values("Aria", "Stark", "7, Avda Aviacion Española", 102934, 978668756, "Guadarrama", "Madrid", "6598632W");
insert musicians values("Maria", "Broncano", "1, Avda Plus Ultra", 183746, 669958547, "Colmenar Viejo", "Madrid", "22589635T");
insert musicians values("Sansa", "Perez", "10, Avda los Afligidos", 192837, 609687745, "Barcelona", "Barcelona", "47896523R");
insert musicians values("Rob", "Hernandez", "24, Calle principe", 102554, 702691154, "Murcia", "Murcia", "56982314Q");
insert musicians values("Daneris", "Herrero", "34, Calle princesa", 009958, 601253396, "Malaga", "Malaga", "02365987T");
insert musicians values("Edward", "Elric", "4, Avda Aguadores", 229938, 345698875, "Salamanca", "Salamanca", "25634789A");
insert musicians values("Alphonse", "Morales", "9, Avda Casillas", 220033, 346589967, "Las Torres", "Salamanca", "44789652S");
/*instruments*/
insert instrument values("Saxophone", 4569874526);
insert instrument values("Saxophone", 4569456987);
insert instrument values("Saxophone", 4562103256);
insert instrument values("Saxophone", 4567775550);
insert instrument values("Guitar", 9874563215);
insert instrument values("Guitar", 9877896543);
insert instrument values("Guitar", 9872031648);
insert instrument values("Voice", null);
insert instrument values("Piano", 5264568752);
insert instrument values("Piano", 5267987987);
/*plays*/
insert plays values("78009876S",4569874526);
insert plays values("55669987S",4565456987);
insert plays values("02369874P",4562103256);
insert plays values("6598632W",4567775550);
insert plays values("22589635T",9874563215);
insert plays values("47896523R",9876896543);
insert plays values("56982314Q",9872031648);
insert plays values("02365987T",null);
insert plays values("25634789A",5264568752);
insert plays values("44789652S",5267987987);
/*songs*/
insert song values(120, 20, 3, 2019, "titanic", "78009876S");
insert song values(345, 1, 4, 2002, "titanium", "78009876S");
insert song values(234, 12, 9, 2009, "Ocean", "56982314Q");
insert song values(178, 6, 11, 2001, "Without you", "56982314Q");
insert song values(333, 7, 4, 2015, "Like i do", "56982314Q");
insert song values(456, 12, 6, 2013, "Levels", "56982314Q");
insert song values(123, 6, 10, 2012, "I could be the one", "6598632W");
insert song values(112, 30, 7, 2010, "Scared to be lonely", "6598632W");
insert song values(102, 12, 8, 2003, "Wake me up", "44789652S");
insert song values(180, 31, 2, 2004,"Ease my mind", "02365987T" );
insert song values(230, 2, 5, 1999, "Revolution",  "02365987T");
insert song values(257, 31, 12, 1968, "Million voices",  "02365987T");
/*composes*/
insert composes values(120, "titanic", "78009876S");
insert composes values(345, "titanium", "78009876S");
insert composes values(234, "Ocean", "56982314Q");
insert composes values(178, "Without you", "56982314Q");
insert composes values(333, "Like i do", "56982314Q");
insert composes values(456, "Levels", "56982314Q");
insert composes values(123, "I could be the one", "6598632W");
insert composes values(112, "Scared to be lonely", "6598632W");
insert composes values(102, "Wake me up", "44789652S");
insert composes values(180, "Ease my mind", "02365987T" );
insert composes values(230, "Revolution",  "02365987T");
insert composes values(257, "Million voices",  "02365987T");
/*musicgroup*/
insert musicgroup values("Jazz", 456987123);
insert musicgroup values("Rock", 789654132);
insert musicgroup values("Heavy Metal", 012365487);
insert musicgroup values("EDM", 698745123);
/*concerts*/
insert into concerts values("Santiago Bernabeu","Madrid","Spain",26,04,2018,"54786278D");
insert into concerts values("Glasgow","Peach Stadium","Ireland",04,05,2020,"89765435T");
insert into concerts values("Univ state","London","England",02,02,2013,"35554867P");
insert into concerts values("Skate Center","New York","USA",06,08,2014,"89256798J");
insert into concerts values("Sao Paulo Center","Lisbon","Portugal",12,09,2006,"57934615L");
insert into concerts values("Palau Sant Jordi","Barcelona","Spain",25,03,2019,"20201537A");
insert into concerts values("Oxford Street","London","England",01,02,2002,"66554785S");
insert into concerts values("Atlantic Avenue","Rio de Janeiro","Brazil",05,11,2018,"65233114B");
/*disk*/
insert into disk values(154747521,"Digital","Let it be",17,02,1998,"Rock","MP3",3,null);
insert into disk values(657984221,"Physical","Drones",25,10,2001,"Heavy Metal",null,4,"LP");
insert into disk values(112354897,"Physical","Muse",21,06,2003,"Jazz",null,2,"CD");
insert into disk values(654645699,"Digital","Origins",27,12,2006,"Pop","WMA",3,null);
insert into disk values(465487987,"Digital","Meteora",13,10,2012,"Alternative","AAC",5,null);
insert into disk values(466744862,"Digital","The Hunting Party","Punk","FLAC",7,null);
/*user*/
insert into user values("John","Wick","78946254G","
/*members*/
insert members values("78009876S",456987123);
insert members values("55669987S",456987123);
insert members values("02369874P", 012365487);
insert members values("6598632W", 012365487);
insert members values("22589635T",789654132);
insert members values("47896523R", 012365487);
insert members values("56982314Q",456987123);
insert members values("02365987T",78965413);
insert members values("25634789A",698745123);
insert members values("44789652S",698745123);
