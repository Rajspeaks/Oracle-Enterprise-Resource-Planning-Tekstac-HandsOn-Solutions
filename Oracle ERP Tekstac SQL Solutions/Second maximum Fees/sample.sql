select courseid, CourseName from COURSE where Fees = (
    select max(Fees) from COURSE where Fees <
        (select max(Fees) from COURSE)
)
order by courseid;