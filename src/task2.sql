select user_id, first_name, last_name, age
from users u join
bookings b ON
b.user_id = u.id group by user_id;