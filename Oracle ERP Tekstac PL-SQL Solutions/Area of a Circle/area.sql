

declare
pi constant number(4,2):=3.14;
radius number(2);
area number(14,2);
begin
radius :=3;
while radius <=7
loop
area := pi*power(radius,2);
insert into Circle values(radius,area);
radius := radius+1;
end loop;
end;
/