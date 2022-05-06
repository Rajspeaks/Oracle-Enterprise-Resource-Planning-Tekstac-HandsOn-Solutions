select FirstName,CourseName from ((STUDENT s
inner join REGISTRATION r on s.StudID=r.StudId)
inner join course c on r.CourseID=c.CourseID)
order by FirstName asc,CourseName asc;