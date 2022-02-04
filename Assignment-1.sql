show databases;

/*q1*/ 

select count(*) as Listed_Speed, MAX(speed), MIN(speed)
from planes
where speed > 0
;

/*q2*/

select * from flights;
select sum(distance)
from flights
where month = 1;

select sum(distance)
from flights
where tailnum = ' ';

/*q3*/

select sum(distance) from flights
where month = 7 && day = 5;
select planes.manufacturer, flights.distance, sum(distance)
from planes inner join flights on planes.tailnum = flights.tailnum
where month = 7 && day = 5
group by manufacturer;


select planes.manufacturer, flights.distance, sum(distance)
from planes left join flights on planes.tailnum = flights.tailnum
where month = 7 && day = 5
group by manufacturer;


/*q4*/
/*Show the tail number of planes flew to different destination when weather temp. is below 20.00    */

select planes.tailnum, flights.dest, weather.temp
from planes inner join flights on planes.tailnum = flights.tailnum
inner join weather on flights.year = weather.year
where temp <= 20.00







