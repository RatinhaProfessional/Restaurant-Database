## Holo Spice - SQL database tailored for restaurant

**University case study featuring:** SQL database creation with and data insertion.

**SQL Queries:**

> *Get a list of tables and it's capacity in particular restaurant*
> SELECT taable.tableID, taable.capacity FROM taable INNER JOIN restaurant WHERE restaurantName = 'Holo Spice';

> *Get a list of all bookings for a given customer*
> SELECT reservation.dateStart, reservation.dateEnd, reservation.length, reservation.guestAmount, tablereservation.tableID
FROM customer 
INNER JOIN reservation on customer.customerID = reservation.customerID
INNER JOIN tablereservation on reservation.reservationID = tablereservation.reservationID
WHERE firstName = 'Nickolai' AND lastName = 'Henrot'
ORDER BY dateStart ASC

> *Get a list of all bookings for a given table*
> SELECT reservation.reservationID, reservation.dateStart, reservation.dateEnd, reservation.length, reservation.guestAmount, customer.firstName, customer.lastNAME
FROM reservation
INNER JOIN tablereservation on tablereservation.reservationID = reservation.reservationID
INNER JOIN customer on customer.customerID = reservation.customerID
WHERE tablereservation.tableID = '19' 
