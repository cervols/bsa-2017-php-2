select u.*
from users u
where u.age > 25 and u.id in (select b.user_id
 from tickets t join
	bookings b on b.ticket_id = t.id
group by b.user_id
having sum(price) > 400);