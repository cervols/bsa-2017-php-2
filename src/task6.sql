/*select first_name, last_name, age from users u join
(select b.user_id from bookings b join tickets t
ON t.id = b.ticket_id
where t.title = 'Lagos') AS vyb
ON u.id = vyb.user_id;
*/
select u.*
from users u join
 bookings b ON u.id = b.user_id join
  tickets t ON b.ticket_id = t.id
where t.title = 'Lagos';