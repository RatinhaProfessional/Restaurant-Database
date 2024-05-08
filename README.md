## Holo Spice - SQL database tailored for restaurant

**University case study featuring:** SQL database creation with and data insertion.

**SQL Queries:**

> *Get a list of tables and it's capacity in particular restaurant* <br />
> SELECT taable.tableID, taable.capacity FROM taable INNER JOIN restaurant WHERE restaurantName = 'Holo Spice';<br />

> *Get a list of all bookings for a given customer*<br />
> SELECT reservation.dateStart, reservation.dateEnd, reservation.length, reservation.guestAmount, tablereservation.tableID<br />
FROM customer<br />
INNER JOIN reservation on customer.customerID = reservation.customerID<br />
INNER JOIN tablereservation on reservation.reservationID = tablereservation.reservationID<br />
WHERE firstName = 'Nickolai' AND lastName = 'Henrot'<br />
ORDER BY dateStart ASC

> *Get a list of all bookings for a given table*<br />
> SELECT reservation.reservationID, reservation.dateStart, reservation.dateEnd, reservation.length, reservation.guestAmount, customer.firstName, customer.lastNAME<br />
FROM reservation<br />
INNER JOIN tablereservation on tablereservation.reservationID = reservation.reservationID<br />
INNER JOIN customer on customer.customerID = reservation.customerID<br />
WHERE tablereservation.tableID = '19'<br />
