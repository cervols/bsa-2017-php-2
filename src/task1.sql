/*select u.*
from users u
where u.age > 25 and u.id in (select b.user_id
 from tickets t join
	bookings b on b.ticket_id = t.id
group by b.user_id
having sum(price) > 400);
*/
select u.*
from users u join
 bookings b on u.id = b.user_id join
  tickets t on b.ticket_id = t.id
where u.age > 25
group by u.id
having sum(t.price) > 400;