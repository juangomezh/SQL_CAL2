/*EX1*/
select musicgroup.genre, musicgroup.groupID
from musicgroup where musicgroup.genre like "Jazz";
/*EX2*/
select musician.name from musician, plays, instrument
where musician.ID=plays.ID and plays.numserie=instrument.numserie and instrument.name like "Drum";
/*Ex3*/
select musician.name from musician, plays, instrument, musicgroup
where musicgroup.genre like "Jazz" and musician.ID=plays.ID and instrument.numserie=plays.numserie
and instrument.name like "saxophone";
/*EX4*/
select distinct musicgroup.groupID from musicgroup, concerts
where concerts.Country like "Spain";
/*EX5*/
select D.Referencenumber
	from disks as D 
		where (select count(distinct has.name) from disks as D1, has where  has.Referencenumber=D1.Referencenumber and D1.Referencenumber=D.Referencenumber)>10;
/*EX6*/
select musicgroup.* from musicgroup, musician, members, 
	(select count(distinct members.ID) as numero, members.ID as dnis from members group by members.ID) as pp
		where members.id=dnis and musicgroup.groupID=members.groupID and numero>3;
/*EX7*/
select aboutdisks.opdescription 
	from aboutdisks, buydisks, user, (select count(distinct buydisks.email) as cantidad, buydisks.email as codigo from buydisks group by buydisks.Referencenumber) as pp
		where cantidad>3 and buydisks.email=codigo and aboutdisks.email=user.email and user.DNI=buydisks.email;
/*EX8*/
select disk.title, disk.Referencenumber 
	from disk inner join has on disk.Referencenumber = disk.Referencenumber
		where has.duration>5 and disk.format = "Physical" and disk.typeofphy = "CD";
/*EX9*/
select musician.name from musicgroup, perform, musician, concerts, members, tickets
where concerts.City like "Madrid" and perform.Code=concerts.Code and perform.groupID=musicgroup.groupID and
members.groupID=musicgroup.groupID and members.ID=musician.ID and tickets.price>100 and tickets.concertcode=concerts.Code;
/*EX10*/
select opdescription 
	from aboutconcerts, musicgroup, perform, musician, concerts, members
where concerts.City like "Madrid" and perform.Code=concerts.Code and perform.groupID=musicgroup.groupID and
members.groupID=musicgroup.groupID and members.ID=musician.ID;
/*EX11*/
select song.*, musician.name from (((musician natural join composes) natural join song) natural join has) natural join disks
where disks.genre like "Heavy Metal" and disks.year=2018;
/*EX12*/
select musician.name 
from musician, plays, instrument, musicgroup, members
where musicgroup.genre like "jazz" and musician.ID=members.ID and members.ID=musicgroup.groupID
and plays.ID=musician.ID and instrument.numserie=plays.numserie and instrument.name like "Guitar";
/*EX13*/
select user.name, user.surname
	from user, tickets inner join concerts on tickets.concertcode=concerts.Code, perform inner join concerts on perform.Code=concerts.Code, perform inner join musicgroup on perform.groupID=musicgroup.groupID
    where tickets.year=2018 and concerts.year=2018 and musicgroup.genre like "Jazz" and 
		exists(select aboutconcerts.* from aboutconcerts where aboutconcerts.email=user.email) 
        and exists(select buytickets where buytickets.email=user.email and buytickets.ticketcode=tickets.ticketcode);
/*EX14*/
select disk.title, song.name 
	from disk inner join has on has.Referencenumber = disk.Referencenumber inner join song on song.name = has.name inner join aboutdisks on disk.Referencenumber = disk.Referencenumber
where aboutdisks.rating>8;
/*EX15*/
select musicgroup.*, members.ID from musicgroup inner join members on members.groupID=musicgroup.groupID
where musicgroup.groupID 
	not in(select musicgroup.groupID 
		from musicgroup, perform, concerts where concerts.Code not in (select concerts.Code from concerts where concerts.Country like "Spain")
			and concerts.Code=perform.Code and musicgroup.groupID=perform.groupID)
	and musicgroup.groupID 
    in(select musicgroup.groupID from musicgroup, record, disks, (select count(has.name) as numsongs, disks.Referencenumber as disc 
													from has natural join disks group by has.Referencenumber) as pp
								where record.groupID=musicgroup.groupID 
									and record.Referencenumber=Disks.Referencenumber and numsongs>10 and disc=disks.Referencenumber);
/*EX16*/
select song.name, musician.name from musician, song, musicgroup where musician.ID
not in(select members.ID from members, musicgroup, concerts, perform where concerts.Code 
not in(select concerts.Code from concerts where concerts.year=2017) and
concerts.Code=perform.Code and musicgroup.groupID=perform.groupID);