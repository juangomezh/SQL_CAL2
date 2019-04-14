/*EX1*/
select musicgroup.genre, musicgroup.groupID
from musicgroup where musicgroup.genre like "Jazz";
/*EX2*/
select musician.name from musician, plays, instrument
where musician.ID=plays.ID and plays.numserie=instrument.numserie and instrument.name like "Drum";
/*Ex3*/
select musician.name from musician, members, musicgroup, plays, instrument
where musicgroup.groupID=members.groupID and musicgroup.genre like "Jazz" and musician.ID=plays.ID and instrument.numserie=plays.numserie and musician.ID=members.ID
and instrument.name like "Saxophone";
/*EX4*/
select distinct musicgroup.groupID from musicgroup, concerts
where concerts.Country like "Spain";
/*EX5*/
select D.Referencenumber
	from disk as D 
		where (select count(has.name) from disk as D1, has where  has.Referencenumber=D1.Referencenumber and D1.Referencenumber=D.Referencenumber)>10;
/*EX6*/
select m1.* 
	from musicgroup as m1
		where (select count(members.ID) from members, musicgroup as m2 where m1.groupID=m2.groupID and m2.groupID=members.groupID)>3;
/*EX7*/
select distinct aboutdisks.opdescription, U.email
	from aboutdisks, user as U
		where (select count(buydisks.email) from buydisks, user as U1 where U1.email=buydisks.email and U.email=U1.email)>=3
        and aboutdisks.email=U.email;
/*EX8*/
select distinct disk.title, disk.Referencenumber 
	from disk inner join has on disk.Referencenumber = disk.Referencenumber
		where has.duration>5 and disk.format = "Physical" and disk.typeofphy = "CD";
/*EX9*/
select musician.name from musicgroup, perform, musician, concerts, members, tickets
where concerts.City like "Madrid" and perform.Code=concerts.Code and perform.groupID=musicgroup.groupID and
members.groupID=musicgroup.groupID and members.ID=musician.ID and tickets.price>100 and tickets.concertcode=concerts.Code;
/*EX10*/
select distinct aboutconcerts.opdescription, user.email
	from aboutconcerts, user, musicgroup, tickets, perform, musician, concerts, members
	where concerts.City like "Madrid" and perform.Code=concerts.Code and perform.groupID=musicgroup.groupID and
	members.groupID=musicgroup.groupID and members.ID=musician.ID and tickets.price>100 and tickets.concertcode=concerts.Code
    and user.email=aboutconcerts.email;
/*EX11*/
select distinct musician.name, song.* from musician, musicgroup, disk, has, song, members, record, composes
where musician.ID=members.ID and musicgroup.groupID=members.groupID
	and disk.Referencenumber=has.Referencenumber and has.name=song.name
    and composes.ID=musician.ID and composes.name=song.name
    and record.groupID=musicgroup.groupID and record.Referencenumber=disk.Referencenumber and
	disk.genre="Heavy Metal" and disk.year=2018;
/*EX12*/
select musician.name 
from musician, plays, instrument, musicgroup, members
where musicgroup.genre like "Jazz" and musician.ID=members.ID and members.groupID=musicgroup.groupID
and plays.ID=musician.ID and instrument.numserie=plays.numserie and instrument.name like "Guitar";
/*EX13*/
select user.name, user.surname
	from user, 
    tickets inner join concerts on tickets.concertcode=concerts.Code 
	inner join perform on perform.Code=concerts.Code inner join musicgroup on perform.groupID=musicgroup.groupID
    where tickets.year=2018 and concerts.year=2018 and musicgroup.genre like "Jazz" and 
		exists(select aboutconcerts.* from aboutconcerts where aboutconcerts.email=user.email) 
        and exists(select buytickets.* from buytickets where buytickets.email=user.email and buytickets.ticketcode=tickets.ticketcode);
/*EX14*/
select distinct disk.title, song.name 
	from disk inner join has on has.Referencenumber = disk.Referencenumber 
    inner join song on song.name = has.name inner join aboutdisks on disk.Referencenumber = disk.Referencenumber
	where aboutdisks.rating>8;
/*EX15*/
select distinct musicgroup.*, members.ID as musicianID from musicgroup inner join members on members.groupID=musicgroup.groupID, 
perform inner join concerts on concerts.Code=perform.Code, disk inner join record on record.Referencenumber=disk.Referencenumber
where 
	musicgroup.groupID=perform.groupID and concerts.Country not like "Spain"
	and record.groupID=musicgroup.groupID and disk.Referencenumber 
    in(select D.Referencenumber
		from disk as D 
			where (select count(has.name) from disk as D1, has where  has.Referencenumber=D1.Referencenumber and D1.Referencenumber=D.Referencenumber)>10);
/*EX16*/
select musician.name, composes.name from musician, song, members, composes
	where members.groupID
    not in(select musicgroup.groupID from musicgroup, perform inner join concerts on concerts.Code=perform.Code 
			where concerts.year=2017 and perform.groupID=musicgroup.groupID)
	and composes.ID=musician.ID and song.name=composes.name and members.ID=musician.ID;