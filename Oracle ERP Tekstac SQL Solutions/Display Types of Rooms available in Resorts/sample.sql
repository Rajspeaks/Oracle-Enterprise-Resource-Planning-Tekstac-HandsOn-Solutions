SELECT RESORT.resortID,bedroomcount,cabintype
from RESORT,CABIN 
where(RESORT.resortID=1001 or RESORT.resortID=1002) and RESORT.resortID=CABIN.resortID
order by resortID,bedroomcount,cabintype asc;
