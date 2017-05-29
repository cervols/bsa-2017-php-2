select * from users u 
where u.id not in 
(select b.user_id from bookings b join tickets t
ON b.ticket_id = t.id
where t.country = 'Aruba');