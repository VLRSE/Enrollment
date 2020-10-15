Select a.teacherID, a.name, b.subjcode, b.description, b.units, c.time,
 c.room, c.day from schedule c inner join subject b on c.subjcode = b.subjcode  
 inner join teacher a on c.teacherID = a.teacherID order by name ;