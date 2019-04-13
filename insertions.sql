delete from record;
delete from plays;
delete from aboutdisks;
delete from aboutconcerts;
delete from opinions;
delete from members;
delete from buytickets;
delete from buydisks;
delete from perform;
delete from musicgroup;
delete from instrument;
delete from has;
delete from composes;
delete from song;
delete from musician;
delete from tickets;
delete from concerts;
delete from user;
delete from disk;
/*musicians*/
insert into musician values("Pepe", "gonzalez", "55, Avda Caballeria Española", 288805, 1039485, "Madrid", "Madrid", "78009876S");
insert into musician values("Pedro", "gonzalez", "64, Calle Avila", 288804, 198456123, "Alcala de Henares", "Madrid", "55669987S");
insert into musician values("Edward", "Gomez", "11, Avda Figueroa", 288809, 102938659, "Guadalajara", "Guadalajara", "02369874P");
insert into musician values("Aria", "Stark", "7, Avda Aviacion Española", 102934, 978668756, "Guadarrama", "Madrid", "65986321W");
insert into musician values("Maria", "Broncano", "1, Avda Plus Ultra", 183746, 669958547, "Colmenar Viejo", "Madrid", "22589635T");
insert into musician values("Sansa", "Perez", "10, Avda los Afligidos", 192837, 609687745, "Barcelona", "Barcelona", "47896523R");
insert into musician values("Rob", "Hernandez", "24, Calle principe", 102554, 702691154, "Murcia", "Murcia", "56982314Q");
insert into musician values("Daneris", "Herrero", "34, Calle princesa", 009958, 601253396, "Malaga", "Malaga", "02365987T");
insert into musician values("Edward", "Elric", "4, Avda Aguadores", 229938, 345698875, "Salamanca", "Salamanca", "25634789A");
insert into musician values("Alphonse", "Morales", "9, Avda Casillas", 220033, 346589967, "Las Torres", "Salamanca", "44789652S");
/*instruments*/
insert into instrument values("Saxophone", 4569874526);
insert into instrument values("Saxophone", 4569456987);
insert into instrument values("Saxophone", 4562103256);
insert into instrument values("Saxophone", 4567775550);
insert into instrument values("Guitar", 9874563215);
insert into instrument values("Guitar", 9877896543);
insert into instrument values("Guitar", 9872031648);
insert into instrument values("Voice", 0);
insert into instrument values("Piano", 5264568752);
insert into instrument values("Piano", 5267987987);
/*plays*/
insert into plays values("78009876S",4569874526);
/**insert into plays values("55669987S",4565456987);*/
insert into plays values("02369874P",4562103256);
insert into plays values("65986321W",4567775550);
insert into plays values("22589635T",9874563215);
/*insert into plays values("47896523R",9876896543);*/
insert into plays values("56982314Q",9872031648);
insert into plays values("02365987T",0);
insert into plays values("25634789A",5264568752);
insert into plays values("44789652S",5267987987);
/*songs*/
insert into song values(120, 20, 3, 2019, "titanic", "78009876S");
insert into song values(345, 1, 4, 2002, "titanium", "78009876S");
insert into song values(234, 12, 9, 2009, "Ocean", "56982314Q");
insert into song values(178, 6, 11, 2001, "Without you", "56982314Q");
insert into song values(333, 7, 4, 2015, "Like i do", "56982314Q");
insert into song values(456, 12, 6, 2013, "Levels", "56982314Q");
insert into song values(123, 6, 10, 2012, "I could be the one", "65986321W");
insert into song values(112, 30, 7, 2010, "Scared to be lonely", "65986321W");
insert into song values(102, 12, 8, 2003, "Wake me up", "44789652S");
insert into song values(180, 31, 2, 2004,"Ease my mind", "02365987T" );
insert into song values(230, 2, 5, 1999, "Revolution",  "02365987T");
insert into song values(257, 31, 12, 1968, "Million voices",  "02365987T");
/*composes*/
insert into composes values(120, "titanic", "78009876S");
insert into composes values(345, "titanium", "78009876S");
insert into composes values(234, "Ocean", "56982314Q");
insert into composes values(178, "Without you", "56982314Q");
insert into composes values(333, "Like i do", "56982314Q");
insert into composes values(456, "Levels", "56982314Q");
insert into composes values(123, "I could be the one", "65986321W");
insert into composes values(112, "Scared to be lonely", "65986321W");
insert into composes values(102, "Wake me up", "44789652S");
insert into composes values(180, "Ease my mind", "02365987T" );
insert into composes values(230, "Revolution",  "02365987T");
insert into composes values(257, "Million voices",  "02365987T");
/*musicgroup*/
insert into musicgroup values("Jazz", 456987123);
insert into musicgroup values("Rock", 789654132);
insert into musicgroup values("Heavy Metal", 012365487);
insert into musicgroup values("EDM", 698745123);
/*concerts*/
insert into concerts values("Santiago Bernabeu","Madrid","Spain",26,04,2018,"54786278D");
insert into concerts values("Glasgow","Peach Stadium","Ireland",04,05,2020,"89765435T");
insert into concerts values("Univ state","London","England",02,02,2013,"35554867P");
insert into concerts values("Skate Center","New York","USA",06,08,2014,"89256798J");
insert into concerts values("Sao Paulo Center","Lisbon","Portugal",12,09,2006,"57934615L");
insert into concerts values("Palau Sant Jordi","Barcelona","Spain",25,03,2019,"20201537A");
insert into concerts values("Oxford Street","London","England",01,02,2002,"66554785S");
insert into concerts values("Atlantic Avenue","Rio de Janeiro","Brazil",05,11,2018,"65233114B");
/*perform*/
insert into perform values(456987123,"54786278D");
insert into perform values(789654132,"54786278D");
insert into perform values(698745123,"54786278D");
insert into perform values(456987123,"89765435T");
insert into perform values(789654132,"89765435T");
insert into perform values(456987123,"35554867P");
insert into perform values(789654132,"89256798J");
insert into perform values(456987123,"89256798J");
insert into perform values(012365487,"89256798J");
insert into perform values(012365487,"57934615L");
insert into perform values(789654132,"20201537A");
insert into perform values(698745123,"20201537A");
insert into perform values(789654132,"66554785S");
insert into perform values(698745123,"66554785S");
insert into perform values(012365487,"66554785S");
/*disk*/
insert into disk values(154747521,"Digital","Let it be",17,02,1998,"Rock","MP3",3,null);
insert into disk values(657984221,"Physical","Drones",25,10,2001,"Heavy Metal",null,4,"LP");
insert into disk values(112354897,"Physical","Muse",21,06,2003,"Jazz",null,2,"CD");
insert into disk values(654645699,"Digital","Origins",27,12,2006,"Pop","WMA",3,null);
insert into disk values(465487987,"Digital","Meteora",13,10,2012,"Alternative","AAC",5,null);
/**insert into disk values(466744862,"Digital","The Hunting Party","Punk","FLAC",7,null);*/
/*user*/
insert into user values("John","Wick","78946254G","johnwick@gmail.com",120);
insert into user values("Thanos","Allmighty","66566512T","thanosthedestroyer@gmail.com",25);
insert into user values("Izuku","Midoriya","87964521I","deku@gmail.com",100);
insert into user values("John","Forge","11798654J","johnforge@gmail.com",17);
insert into user values("Katsuki","Bakugo","45457896B","kbakugo@gmail.com",90);
insert into user values("Bruce","Wayne","63636354B","thebatman@gmail.com",99);
insert into user values("Diana","Prince","99658742P","woderwoman@gmail.com",56);
/*tickets*/
insert into tickets values(665897554,"54786278D",26,04,2018,40);
insert into tickets values(654214156,"89765435T",04,05,2020,52);
insert into tickets values(564798113,"35554867P",02,02,2013,60);
insert into tickets values(889444954,"89256798J",06,08,2014,30);
insert into tickets values(798977426,"57934615L",12,09,2006,73);
insert into tickets values(645213698,"20201537A",25,03,2019,39);
insert into tickets values(566578112,"66554785S",01,02,2002,41);
insert into tickets values(613214786,"65233114B",05,11,2018,83);
/*opinions*/
/**insert into opinions values("johnwick@gmail.com","Wow, that was incedible");
insert into opinions values("thanosthedestroyer@gmail.com","Not the best I´ve listened to, but well balanced indeed");
insert into opinions values("deku@gmail.com","Such an incredible experience");
insert into opinions values("johnforge@gmail.com","Pretty much satisfied with band, really talented artists");
insert into opinions values("kbakugo@gmail.com","Expected more from this group, specially with their last disc");
insert into opinions values("thebatman@gmail.com","Epic songs, looking forward to the next one");
insert into opinions values("woderwoman@gmail.com","Defenitely reccommended to anyone who loves rock music!");*/
/*members*/
insert into members values("78009876S",456987123);
insert into members values("55669987S",456987123);
insert into members values("02369874P",012365487);
insert into members values("65986321W",012365487);
insert into members values("22589635T",789654132);
insert into members values("47896523R",012365487);
insert into members values("56982314Q",456987123);
/*insert into members values("02365987T",78965413);*/
insert into members values("25634789A",698745123);
insert into members values("44789652S",698745123);
/*has*/
insert into has values(154747521,120, 20, 3, 2019, "titanic", "78009876S");
insert into has values(657984221,120, 20, 3, 2019, "titanic", "78009876S");
/*insert into has values(613214786,120, 20, 3, 2019, "titanic", "78009876S");*/
insert into has values(154747521,345, 1, 4, 2002, "titanium", "78009876S");
/*insert into has values(564798113,345, 1, 4, 2002, "titanium", "78009876S");*/
/*insert into has values(613214786,234, 12, 9, 2009, "Ocean", "56982314Q");*/
insert into has values(112354897,178, 6, 11, 2001, "Without you", "56982314Q");
insert into has values(154747521,178, 6, 11, 2001, "Without you", "56982314Q");
insert into has values(657984221,178, 6, 11, 2001, "Without you", "56982314Q");
insert into has values(112354897,333, 7, 4, 2015, "Like i do", "56982314Q");
insert into has values(112354897, 456, 12, 6, 2013, "Levels", "56982314Q");
insert into has values(154747521,456, 12, 6, 2013, "Levels", "56982314Q");
/*insert into has values(613214786,456, 12, 6, 2013, "Levels", "56982314Q");*/
/*insert into has values(564798113,456, 12, 6, 2013, "Levels", "56982314Q");*/
insert into has values(112354897,123, 6, 10, 2012, "I could be the one", "65986321W");
insert into has values(654645699,112, 30, 7, 2010, "Scared to be lonely", "65986321W");
insert into has values(154747521,112, 30, 7, 2010, "Scared to be lonely", "65986321W");
insert into has values(154747521,102, 12, 8, 2003, "Wake me up", "44789652S");
/*insert into has values(613214786,180, 31, 2, 2004,"Ease my mind", "02365987T" );*/
insert into has values(154747521,180, 31, 2, 2004,"Ease my mind", "02365987T" );
/*insert into has values(613214786,230, 2, 5, 1999, "Revolution",  "02365987T");*/
insert into has values(154747521,230, 2, 5, 1999, "Revolution",  "02365987T");
/*insert into has values(566578112,257, 31, 12, 1968, "Million voices",  "02365987T");*/
/*insert into has values(613214786,257, 31, 12, 1968, "Million voices",  "02365987T");*/
insert into has values(154747521,257, 31, 12, 1968, "Million voices",  "02365987T");
insert into has values(112354897,257, 31, 12, 1968, "Million voices",  "02365987T");
/*record*/
insert into record values(154747521, 456987123);
insert into record values(657984221, 456987123);
insert into record values(613214786, 456987123);
insert into record values(154747521, 456987123);
insert into record values(564798113, 456987123);
insert into record values(613214786, 456987123);
insert into record values(112354897, 456987123);
insert into record values(154747521, 456987123);
insert into record values(657984221, 456987123);
insert into record values(112354897, 456987123);
insert into record values(112354897, 456987123);
insert into record values(154747521, 456987123);
insert into record values(613214786, 456987123);
insert into record values(564798113, 456987123);
insert into record values(112354897, 012365487);
insert into record values(654645699, 012365487);
insert into record values(154747521, 012365487);
insert into record values(154747521, 698745123);
insert into record values(613214786, 78965413);
insert into record values(154747521, 78965413);
insert into record values(613214786, 78965413);
insert into record values(154747521, 78965413);
insert into record values(566578112, 78965413);
insert into record values(613214786, 78965413);
insert into record values(154747521, 78965413);
insert into record values(613214786, 78965413);*/
/*buytickets*/
insert into buytickets values(665897554,"deku@gmail.com");
insert into buytickets values(654214156,"kbakugo@gmail.com");
insert into buytickets values(564798113,"johnforge@gmail.com");
insert into buytickets values(889444954,"johnwick@gmail.com");
insert into buytickets values(798977426,"deku@gmail.com");
insert into buytickets values(645213698,"johnwick@gmail.com");
insert into buytickets values(566578112,"deku@gmail.com");
insert into buytickets values(613214786,"kbakugo@gmail.com");
/*buydisks*/
insert into has values(154747521,"johnwick@gmail.com");
insert into has values(657984221,"johnwick@gmail.com");
insert into has values(465487987,"thanosthedestroyer@gmail.com");
insert into has values(154747521,"deku@gmail.com");
insert into has values(112354897,"deku@gmail.com");
insert into has values(154747521,"johnforge@gmail.com");
insert into has values(466744862,"johnforge@gmail.com");
insert into has values(657984221,"johnforge@gmail.com");
insert into has values(654645699,"johnforge@gmail.com");
insert into has values(465487987,"johnforge@gmail.com");
insert into has values(154747521,"kbakugo@gmail.com");
insert into has values(466744862,"kbakugo@gmail.com");
insert into has values(154747521,"thebatman@gmail.com");
insert into has values(657984221,"woderwoman@gmail.com");
insert into has values(112354897,"woderwoman@gmail.com");
insert into has values(465487987,"woderwoman@gmail.com");
/*aboutdisks*/
insert into aboutdisks values(154747521,9,"johnwick@gmail.com","A classic wherever you go, can´t stop listening to it");
insert into aboutdisks values(657984221,7,"johnwick@gmail.com","Pretty amazing, though not the best from them");
insert into aboutdisks values(465487987,5,"thanosthedestroyer@gmail.com","Good enough to be sure");
insert into aboutdisks values(154747521,9,"deku@gmail.com","That was the best disc i´ve ever listened to!!");
insert into aboutdisks values(112354897,10,"deku@gmail.com","I was wrong, this is the best disc ever recorded!!");
insert into aboutdisks values(154747521,8,"johnforge@gmail.com","Pretty good, loving all the songs included");
insert into aboutdisks values(466744862,9,"johnforge@gmail.com","Really liked this one, this change in their style was really nice");
insert into aboutdisks values(657984221,10,"johnforge@gmail.com","A masterpiece");
insert into aboutdisks values(654645699,7,"johnforge@gmail.com","Not bad, though I didn´t really lik the full disc");
insert into aboutdisks values(465487987,8,"johnforge@gmail.com","Quite good, nothing to regret buying this one");
insert into aboutdisks values(154747521,4,"kbakugo@gmail.com","Such a dissapointment");
insert into aboutdisks values(466744862,8,"kbakugo@gmail.com","Better than I expected");
insert into aboutdisks values(154747521,7,"thebatman@gmail.com","A good one to be sure");
insert into aboutdisks values(657984221,8,"woderwoman@gmail.com","Pretty impresive");
insert into aboutdisks values(112354897,8,"woderwoman@gmail.com","Amused in all senses");
insert into aboutdisks values(465487987,7,"woderwoman@gmail.com","Liked this one quite a bit");
/*aboutconcerts*/
insert into aboutconcerts values("54786278D","johnwick@gmail.com","Simply unbelievable");
insert into aboutconcerts values("54786278D","deku@gmail.com","Great experience in the concert");
insert into aboutconcerts values("54786278D","woderwoman@gmail.com","Much better live that recorded");
insert into aboutconcerts values("89765435T","kbakugo@gmail.com","I would repeat any time");
insert into aboutconcerts values("89765435T","thanosthedestroyer@gmail.com","Quite good, i've seen better though");
insert into aboutconcerts values("35554867P","johnforge@gmail.com","I really liked this concert, wan´t to repeat asap");
insert into aboutconcerts values("35554867P","deku@gmail.com","That was wild, huge fan");
insert into aboutconcerts values("35554867P","thanosthedestroyer@gmail.com","Got better with every song played");
insert into aboutconcerts values("35554867P","woderwoman@gmail.com","Really like this group, concert was great");
insert into aboutconcerts values("89256798J","johnwick@gmail.com","Entonation was perfect except for some disonnties in interpretation");
insert into aboutconcerts values("89256798J","woderwoman@gmail.com","Concert was good, volume a bit to high for me");
insert into aboutconcerts values("57934615L","deku@gmail.com","What a pleasure");
insert into aboutconcerts values("20201537A","johnwick@gmail.com","Didn't really like it, performance was not bad though");
insert into aboutconcerts values("20201537A","woderwoman@gmail.com","That was incredible, loved it!");
insert into aboutconcerts values("66554785S","deku@gmail.com","Aw man, that was so good!");
insert into aboutconcerts values("66554785S","thebatman@gmail.com","Not gonna lie, i've seen better");
insert into aboutconcerts values("66554785S","johnforge@gmail.com","That was so good I want to repeat");
insert into aboutconcerts values("65233114B","kbakugo@gmail.com","Didn´t like the playback");
insert into aboutconcerts values("65233114B","deku@gmail.com","Expectations, huge dissapointment though");
insert into aboutconcerts values("65233114B","thebatman@gmail.com","Really liked it, last song was the best");
insert into aboutconcerts values("65233114B","woderwoman@gmail.com","Good enough for me, enjoyed it");
