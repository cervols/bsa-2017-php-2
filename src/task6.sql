select first_name, last_name, age from users u join
(select b.user_id from bookings b join tickets t
ON t.id = b.ticket_id
where t.title = 'Lagos') AS vyb
ON u.id = vyb.user_id;