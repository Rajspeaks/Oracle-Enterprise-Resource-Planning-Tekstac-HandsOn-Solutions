select r.studid, sum(c.fees) as TOTALFEES
from course c join
     registration r
     on c.courseid = r.courseid
group by r.studid
order by r.studid;