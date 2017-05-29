update users u left join
 bookings b ON u.id = b.user_id
set is_deleted = 1
where b.id IS NULL;
