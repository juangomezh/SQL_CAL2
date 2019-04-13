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

insert into concerts values("Santiago Bernabeu","Madrid","Spain",26,04,2018,"54786278D");
insert into concerts values("Glasgow","Peach Stadium","Ireland",04,05,2020,"89765435T");
insert into concerts values("Univ state","London","England",02,02,2013,"35554867P");
insert into concerts values("Skate Center","New York","USA",06,08,2014,"89256798J");
insert into concerts values("Sao Paulo Center","Lisbon","Portugal",12,09,2006,"57934615L");
insert into concerts values("Palau Sant Jordi","Barcelona","Spain",25,03,2019,"20201537A");
insert into concerts values("Oxford Street","London","England",01,02,2002,"66554785S");
insert into concerts values("Atlantic Avenue","Rio de Janeiro","Brazil",05,11,2018,"65233114B");

insert into disk values(154747521,"Digital","Let it be",17,02,1998,"Rock","MP3",3,null);
insert into disk values(657984221,"Physical","Drones",25,10,2001,"Heavy Metal",null,4,"LP");
insert into disk values(112354897,"Physical","Muse",21,06,2003,"Jazz",null,2,"CD");
insert into disk values(654645699,"Digital","Origins",27,12,2006,"Pop","WMA",3,null);
insert into disk values(465487987,"Digital","Meteora",13,10,2012,"Alternative","AAC",5,null);
insert into disk values(466744862,"Digital","The Hunting Party","Punk","FLAC",7,null);

insert into user values("John","Wick","78946254G","
